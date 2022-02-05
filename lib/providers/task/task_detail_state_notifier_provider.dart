// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/notifiers/task/task_detail_state_notifier.dart';
import 'package:flutter_firebase_sample/states/task/task_detail_state.dart';

final taskDetailStateNotifierProvider =
    StateNotifierProvider<TaskDetailStateNotifier, TaskDetailState>(
        (ref) => TaskDetailStateNotifier(ref: ref));
