import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_sample/models/task.dart';
import 'package:flutter_firebase_sample/states/auth_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'task_detail_state.freezed.dart';
part 'task_detail_state.g.dart';

@freezed
abstract class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState({
    @Default('') String authUserId,
    Task task,
    @Default(false) bool isFetching,
    @Default(false) bool isError,
    @Default('') String errorMessage,
  }) = _TaskDetailState;
  factory TaskDetailState.fromJson(Map<String, dynamic> json) {
    return _$TaskDetailStateFromJson(json);
  }
}

class TaskDetailStateNotifier extends StateNotifier<TaskDetailState>
    with LocatorMixin {
  TaskDetailStateNotifier() : super(const TaskDetailState());

  @override
  void initState() {
    super.initState();

    state = state.copyWith(authUserId: read<AuthState>().user?.uid);
  }

  @override
  void update(Locator watch) {
    super.update(watch);

    state = state.copyWith(authUserId: watch<AuthState>().user?.uid);
  }

  TaskDetailState setTask(Task task) {
    return state = state.copyWith(task: task);
  }

  // ignore: avoid_positional_boolean_parameters
  TaskDetailState setIsFetching(bool isFetching) {
    return state = state.copyWith(isFetching: isFetching);
  }

  // ignore: avoid_positional_boolean_parameters
  TaskDetailState setIsError(bool isError) {
    return state = state.copyWith(isError: isError);
  }

  TaskDetailState setErrorMessage(String errorMessage) {
    return state = state.copyWith(errorMessage: errorMessage);
  }

  TaskDetailState clear() {
    setTask(null);
    setIsFetching(false);
    setIsError(false);
    setErrorMessage('');
    return state;
  }

  Future<TaskDetailState> fetchTaskById(String id) async {
    final completer = Completer<TaskDetailState>();

    setTask(null);
    setIsFetching(true);
    setIsError(false);
    setErrorMessage('');

    try {
      final documentReference =
          FirebaseFirestore.instance.collection('tasks').doc(id);

      await documentReference.get().then((documentSnapshot) {
        final task = Task()
          ..id = documentSnapshot.id
          ..title = documentSnapshot.data()['title'] as String
          ..description = documentSnapshot.data()['description'] as String
          ..done = documentSnapshot.data()['done'] as bool
          ..createdAt =
              (documentSnapshot.data()['created_at'] as Timestamp)?.toDate()
          ..updatedAt =
              (documentSnapshot.data()['updated_at'] as Timestamp)?.toDate();
        setTask(task);
      });
    } on Exception catch (error) {
      setIsError(true);
      setErrorMessage(error.toString());
    }

    setIsFetching(false);
    completer.complete(state);
    return completer.future;
  }
}
