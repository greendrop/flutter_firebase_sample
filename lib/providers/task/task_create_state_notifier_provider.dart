// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/notifiers/task/task_create_state_notifier.dart';
import 'package:flutter_firebase_sample/states/task/task_create_state.dart';

final taskCreateStateNotifierProvider =
    StateNotifierProvider<TaskCreateStateNotifier, TaskCreateState>(
        (ref) => TaskCreateStateNotifier(ref: ref));
