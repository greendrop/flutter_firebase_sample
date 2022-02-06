// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';
import 'package:flutter_firebase_sample/providers/firebase_firestore_provider.dart';
import 'package:flutter_firebase_sample/states/task/task_update_state.dart';

class TaskUpdateStateNotifier extends StateNotifier<TaskUpdateState> {
  TaskUpdateStateNotifier({required this.ref}) : super(TaskUpdateState());

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

  Future<void> updateTask(Task task) {
    final firebaseFirestore = ref.watch(firebaseFirestoreProvider);
    final data = task
        .copyWith(
          updatedAt: DateTime.now(),
        )
        .toFirestoreJson()
      ..remove('id');
    return firebaseFirestore
        .collection('tasks')
        .withConverter<Task>(
          fromFirestore: (snapshot, _) =>
              Task.fromFirestoreJson(snapshot.id, snapshot.data()!),
          toFirestore: (task, _) => task.toFirestoreJson(),
        )
        .doc(task.id)
        .update(data);
  }
}
