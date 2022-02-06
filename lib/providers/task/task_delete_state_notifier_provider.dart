// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/notifiers/task/task_delete_state_notifier.dart';
import 'package:flutter_firebase_sample/states/task/task_delete_state.dart';

final taskDeleteStateNotifierProvider =
    StateNotifierProvider<TaskDeleteStateNotifier, TaskDeleteState>(
        (ref) => TaskDeleteStateNotifier(ref: ref));
