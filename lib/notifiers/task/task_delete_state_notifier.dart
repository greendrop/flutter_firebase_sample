// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';
import 'package:flutter_firebase_sample/providers/firebase_firestore_provider.dart';
import 'package:flutter_firebase_sample/states/task/task_delete_state.dart';

class TaskDeleteStateNotifier extends StateNotifier<TaskDeleteState> {
  TaskDeleteStateNotifier({required this.ref}) : super(TaskDeleteState());

  final Ref ref;

  Future<void> deleteTask(Task task) {
    final firebaseFirestore = ref.watch(firebaseFirestoreProvider);
    return firebaseFirestore.collection('tasks').doc(task.id).delete();
  }
}
