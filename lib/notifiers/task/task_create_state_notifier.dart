// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';
import 'package:flutter_firebase_sample/providers/firebase_firestore_provider.dart';
import 'package:flutter_firebase_sample/states/task/task_create_state.dart';

class TaskCreateStateNotifier extends StateNotifier<TaskCreateState> {
  TaskCreateStateNotifier({required this.ref}) : super(TaskCreateState());

  final Ref ref;

  Future<DocumentReference<Task>> createTask(Task task) {
    final firebaseFirestore = ref.watch(firebaseFirestoreProvider);
    final data = task.copyWith(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return firebaseFirestore
        .collection('tasks')
        .withConverter<Task>(
          fromFirestore: (snapshot, _) =>
              Task.fromFirestoreJson(snapshot.id, snapshot.data()!),
          toFirestore: (task, _) => task.toFirestoreJson(),
        )
        .add(data);
  }
}
