// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';
import 'package:flutter_firebase_sample/providers/firebase_auth_provider.dart';
import 'package:flutter_firebase_sample/providers/firebase_firestore_provider.dart';
import 'package:flutter_firebase_sample/states/task_list_state.dart';

class TaskListStateNotifier extends StateNotifier<TaskListState> {
  TaskListStateNotifier({required this.ref}) : super(TaskListState());

  final Ref ref;

  void buildTaskListQuery() {
    final firebaseAuth = ref.watch(firebaseAuthProvider);
    final firebaseFirestore = ref.watch(firebaseFirestoreProvider);
    final taskListQuery = firebaseFirestore
        .collection('tasks')
        .where('user_id', isEqualTo: firebaseAuth.currentUser?.uid)
        .orderBy('created_at')
        .withConverter<Task>(
          fromFirestore: (snapshot, _) =>
              Task.fromFirestoreJson(snapshot.id, snapshot.data()!),
          toFirestore: (task, _) => task.toJson(),
        );
    state = state.copyWith(taskListQuery: taskListQuery);
  }
}
