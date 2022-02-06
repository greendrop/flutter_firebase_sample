// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';
import 'package:flutter_firebase_sample/providers/firebase_firestore_provider.dart';
import 'package:flutter_firebase_sample/states/task/task_detail_state.dart';

class TaskDetailStateNotifier extends StateNotifier<TaskDetailState> {
  TaskDetailStateNotifier({required this.ref}) : super(TaskDetailState());

  final Ref ref;

  void buildTaskDocument(String id) {
    final firebaseFirestore = ref.watch(firebaseFirestoreProvider);
    final taskDocument =
        firebaseFirestore.collection('tasks').doc(id).withConverter<Task>(
              fromFirestore: (snapshot, _) =>
                  Task.fromFirestoreJson(snapshot.id, snapshot.data()!),
              toFirestore: (task, _) => task.toFirestoreJson(),
            );
    state = state.copyWith(taskDocument: taskDocument);
  }
}
