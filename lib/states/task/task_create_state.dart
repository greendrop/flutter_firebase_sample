// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_create_state.freezed.dart';

@freezed
class TaskCreateState with _$TaskCreateState {
  factory TaskCreateState() = _TaskCreateState;
  const TaskCreateState._();
}
