import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_sample/models/task_form.dart';
import 'package:flutter_firebase_sample/states/auth_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'task_create_state.freezed.dart';
part 'task_create_state.g.dart';

@freezed
abstract class TaskCreateState with _$TaskCreateState {
  const factory TaskCreateState({
    @Default('') String authUserId,
    @Default(false) bool isCreating,
    @Default(false) bool isError,
    @Default('') String errorMessage,
  }) = _TaskCreateState;
  factory TaskCreateState.fromJson(Map<String, dynamic> json) {
    return _$TaskCreateStateFromJson(json);
  }
}

class TaskCreateStateNotifier extends StateNotifier<TaskCreateState>
    with LocatorMixin {
  TaskCreateStateNotifier() : super(const TaskCreateState());

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
  TaskCreateState setIsCreating(bool isCreating) {
    return state = state.copyWith(isCreating: isCreating);
  }

  // ignore: avoid_positional_boolean_parameters
  TaskCreateState setIsError(bool isError) {
    return state = state.copyWith(isError: isError);
  }

  TaskCreateState setErrorMessage(String errorMessage) {
    return state = state.copyWith(errorMessage: errorMessage);
  }

  TaskCreateState clear() {
    setIsCreating(false);
    setIsError(false);
    setErrorMessage('');
    return state;
  }

  Future<TaskCreateState> createTask(TaskForm taskForm) async {
    final completer = Completer<TaskCreateState>();

    setIsCreating(true);
    setIsError(false);
    setErrorMessage('');

    try {
      final data = {
        'user_id': state.authUserId,
        'title': taskForm.title,
        'description': taskForm.description,
        'done': taskForm.done,
        'created_at': Timestamp.fromDate(DateTime.now()),
        'updated_at': Timestamp.fromDate(DateTime.now()),
      };
      await FirebaseFirestore.instance.collection('tasks').add(data);
    } on Exception catch (error) {
      setIsError(true);
      setErrorMessage(error.toString());
    }

    setIsCreating(false);
    completer.complete(state);
    return completer.future;
  }
}
