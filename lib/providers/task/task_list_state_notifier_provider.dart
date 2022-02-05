// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/notifiers/task/task_list_state_notifier.dart';
import 'package:flutter_firebase_sample/states/task/task_list_state.dart';

final taskListStateNotifierProvider =
    StateNotifierProvider<TaskListStateNotifier, TaskListState>(
        (ref) => TaskListStateNotifier(ref: ref));
