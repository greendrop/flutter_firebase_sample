// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_delete_state.freezed.dart';

@freezed
class TaskDeleteState with _$TaskDeleteState {
  factory TaskDeleteState() = _TaskDeleteState;
  const TaskDeleteState._();
}
