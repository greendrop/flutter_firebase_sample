import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_sample/models/task.dart';
import 'package:flutter_firebase_sample/states/auth_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'task_list_state.freezed.dart';
part 'task_list_state.g.dart';

@freezed
abstract class TaskListState with _$TaskListState {
  const factory TaskListState({
    @Default('') String authUserId,
    List<Task> tasks,
    @Default(true) bool isLastFetched,
    @Default(false) bool isFetching,
    @Default(false) bool isError,
    @Default('') String errorMessage,
  }) = _TaskListState;
  factory TaskListState.fromJson(Map<String, dynamic> json) {
    return _$TaskListStateFromJson(json);
  }
}

class TaskListStateNotifier extends StateNotifier<TaskListState>
    with LocatorMixin {
  TaskListStateNotifier() : super(const TaskListState());

  final taskListPerPage = 10;
  QueryDocumentSnapshot fetchedLastDocument;

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

  TaskListState setTasks(List<Task> tasks) {
    return state = state.copyWith(tasks: tasks);
  }

  // ignore: avoid_positional_boolean_parameters
  TaskListState setIsLastFetched(bool isLastFetched) {
    return state = state.copyWith(isLastFetched: isLastFetched);
  }

  // ignore: avoid_positional_boolean_parameters
  TaskListState setIsFetching(bool isFetching) {
    return state = state.copyWith(isFetching: isFetching);
  }

  // ignore: avoid_positional_boolean_parameters
  TaskListState setIsError(bool isError) {
    return state = state.copyWith(isError: isError);
  }

  TaskListState setErrorMessage(String errorMessage) {
    return state = state.copyWith(errorMessage: errorMessage);
  }

  TaskListState clear() {
    setTasks(null);
    setIsLastFetched(false);
    setIsFetching(false);
    setIsError(false);
    setErrorMessage('');
    return state;
  }

  Future<TaskListState> fetchTasks() async {
    final completer = Completer<TaskListState>();
    setTasks(null);
    setIsLastFetched(false);
    setIsFetching(true);
    setIsError(false);
    setErrorMessage('');
    fetchedLastDocument = null;

    try {
      final query = FirebaseFirestore.instance
          .collection('tasks')
          .where('user_id', isEqualTo: state.authUserId)
          .orderBy('created_at', descending: false)
          .limit(taskListPerPage);

      await query.get().then((querySnapshot) {
        if (querySnapshot.size > 0) {
          final tasks = <Task>[];
          for (final document in querySnapshot.docs) {
            final task = Task()
              ..id = document.id
              ..title = document.data()['title'] as String
              ..description = document.data()['description'] as String
              ..done = document.data()['done'] as bool
              ..createdAt =
                  (document.data()['created_at'] as Timestamp)?.toDate()
              ..updatedAt =
                  (document.data()['updated_at'] as Timestamp)?.toDate();
            tasks.add(task);
            fetchedLastDocument = document;
          }
          setTasks(tasks);
        } else {
          setIsLastFetched(true);
        }
      });
    } on Exception catch (error) {
      setIsError(true);
      setErrorMessage(error.toString());
    }

    setIsFetching(false);
    completer.complete(state);
    return completer.future;
  }

  Future<TaskListState> fetchAdditionalTasks() async {
    final completer = Completer<TaskListState>();

    if (state.isLastFetched) {
      completer.complete(state);
      return completer.future;
    }

    try {
      final query = FirebaseFirestore.instance
          .collection('tasks')
          .where('user_id', isEqualTo: state.authUserId)
          .orderBy('created_at', descending: false)
          .startAfterDocument(fetchedLastDocument)
          .limit(taskListPerPage);

      await query.get().then((querySnapshot) {
        if (querySnapshot.size > 0) {
          final additionalTasks = <Task>[];
          for (final document in querySnapshot.docs) {
            final task = Task()
              ..id = document.id
              ..title = document.data()['title'] as String
              ..description = document.data()['description'] as String
              ..done = document.data()['done'] as bool
              ..createdAt =
                  (document.data()['created_at'] as Timestamp)?.toDate()
              ..updatedAt =
                  (document.data()['updated_at'] as Timestamp)?.toDate();
            additionalTasks.add(task);
            fetchedLastDocument = document;
          }
          final tasks = [
            ...state.tasks,
            ...additionalTasks,
          ];
          setTasks(tasks);
        } else {
          setIsLastFetched(true);
        }
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
