// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';

part 'task_detail_state.freezed.dart';

@freezed
class TaskDetailState with _$TaskDetailState {
  factory TaskDetailState({DocumentReference<Task>? taskDocument}) =
      _TaskDetailState;
  const TaskDetailState._();
}
