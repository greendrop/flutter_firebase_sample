// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';
import 'package:flutter_firebase_sample/providers/firebase_firestore_provider.dart';

final taskListQueryProvider = Provider((ref) {
  final firebaseFirestore = ref.watch(firebaseFirestoreProvider);
  return firebaseFirestore
      .collection('tasks')
      .orderBy('created_at')
      .withConverter<Task>(
          fromFirestore: (snapshot, _) {
            final data = snapshot.data()!;
            if (data['created_at'] != null) {
              data['created_at'] =
                  (data['created_at'] as Timestamp).toDate().toIso8601String();
            }
            if (data['updated_at'] != null) {
              data['updated_at'] =
                  (data['updated_at'] as Timestamp).toDate().toIso8601String();
            }
            return Task.fromJson(data);
          },
          toFirestore: (task, _) => task.toJson());
});
