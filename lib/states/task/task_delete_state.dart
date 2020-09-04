import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_sample/states/auth_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'task_delete_state.freezed.dart';
part 'task_delete_state.g.dart';

@freezed
abstract class TaskDeleteState with _$TaskDeleteState {
  const factory TaskDeleteState({
    @Default('') String authUserId,
    @Default(false) bool isDeleting,
    @Default(false) bool isError,
    @Default('') String errorMessage,
  }) = _TaskDeleteState;
  factory TaskDeleteState.fromJson(Map<String, dynamic> json) {
    return _$TaskDeleteStateFromJson(json);
  }
}

class TaskDeleteStateNotifier extends StateNotifier<TaskDeleteState>
    with LocatorMixin {
  TaskDeleteStateNotifier() : super(const TaskDeleteState());

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
  TaskDeleteState setIsDeleting(bool isDeleting) {
    return state = state.copyWith(isDeleting: isDeleting);
  }

  // ignore: avoid_positional_boolean_parameters
  TaskDeleteState setIsError(bool isError) {
    return state = state.copyWith(isError: isError);
  }

  TaskDeleteState setErrorMessage(String errorMessage) {
    return state = state.copyWith(errorMessage: errorMessage);
  }

  TaskDeleteState clear() {
    setIsDeleting(false);
    setIsError(false);
    setErrorMessage('');
    return state;
  }

  Future<TaskDeleteState> deleteTask(String id) async {
    final completer = Completer<TaskDeleteState>();

    setIsDeleting(true);
    setIsError(false);
    setErrorMessage('');

    try {
      final documentReference =
          FirebaseFirestore.instance.collection('tasks').doc(id);

      await documentReference.delete();
    } on Exception catch (error) {
      setIsError(true);
      setErrorMessage(error.toString());
    }

    setIsDeleting(false);
    completer.complete(state);
    return completer.future;
  }
}
