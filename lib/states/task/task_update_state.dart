import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_sample/models/task_form.dart';
import 'package:flutter_firebase_sample/states/auth_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'task_update_state.freezed.dart';
part 'task_update_state.g.dart';

@freezed
abstract class TaskUpdateState with _$TaskUpdateState {
  const factory TaskUpdateState({
    @Default('') String authUserId,
    @Default(false) bool isUpdating,
    @Default(false) bool isError,
    @Default('') String errorMessage,
  }) = _TaskUpdateState;
  factory TaskUpdateState.fromJson(Map<String, dynamic> json) {
    return _$TaskUpdateStateFromJson(json);
  }
}

class TaskUpdateStateNotifier extends StateNotifier<TaskUpdateState>
    with LocatorMixin {
  TaskUpdateStateNotifier() : super(const TaskUpdateState());

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

  // ignore: avoid_positional_boolean_parameters
  TaskUpdateState setIsUpdating(bool isUpdating) {
    return state = state.copyWith(isUpdating: isUpdating);
  }

  // ignore: avoid_positional_boolean_parameters
  TaskUpdateState setIsError(bool isError) {
    return state = state.copyWith(isError: isError);
  }

  TaskUpdateState setErrorMessage(String errorMessage) {
    return state = state.copyWith(errorMessage: errorMessage);
  }

  TaskUpdateState clear() {
    setIsUpdating(false);
    setIsError(false);
    setErrorMessage('');
    return state;
  }

  Future<TaskUpdateState> updateTask(String id, TaskForm taskForm) async {
    final completer = Completer<TaskUpdateState>();

    setIsUpdating(true);
    setIsError(false);
    setErrorMessage('');

    try {
      final documentReference =
          FirebaseFirestore.instance.collection('tasks').doc(id);

      final data = {
        'user_id': state.authUserId,
        'title': taskForm.title,
        'description': taskForm.description,
        'done': taskForm.done,
        'updated_at': Timestamp.fromDate(DateTime.now()),
      };

      await documentReference.update(data);
    } on Exception catch (error) {
      setIsError(true);
      setErrorMessage(error.toString());
    }

    setIsUpdating(false);
    completer.complete(state);
    return completer.future;
  }
}
