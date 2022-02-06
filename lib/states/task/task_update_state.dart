// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';

part 'task_update_state.freezed.dart';

@freezed
class TaskUpdateState with _$TaskUpdateState {
  factory TaskUpdateState({DocumentReference<Task>? taskDocument}) =
      _TaskUpdateState;
  const TaskUpdateState._();
}
