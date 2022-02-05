// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';

part 'task_list_state.freezed.dart';

@freezed
class TaskListState with _$TaskListState {
  factory TaskListState({Query<Task>? taskListQuery}) = _TaskListState;
  const TaskListState._();
}
