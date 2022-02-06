// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/notifiers/task/task_update_state_notifier.dart';
import 'package:flutter_firebase_sample/states/task/task_update_state.dart';

final taskUpdateStateNotifierProvider =
    StateNotifierProvider<TaskUpdateStateNotifier, TaskUpdateState>(
        (ref) => TaskUpdateStateNotifier(ref: ref));
