// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutterfire_ui/firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';
import 'package:flutter_firebase_sample/providers/task_list_state_notifier_provider.dart';
import 'package:flutter_firebase_sample/ui/drawer/drawer_content.dart';
import 'package:flutter_firebase_sample/ui/task_list/task_list_item.dart';
import 'package:flutter_firebase_sample/ui/widgets/app_bar_leading.dart';

class TaskListPage extends HookConsumerWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Timer.run(() {
        ref.read(taskListStateNotifierProvider.notifier).buildTaskListQuery();
      });
      return () {};
    }, []);

    final taskListState = ref.watch(taskListStateNotifierProvider);
    final taskListQuery = taskListState.taskListQuery;

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.taskListTitle),
        leading: const AppBarLeading(),
      ),
      drawer: const DrawerContent(),
      body: taskListQuery == null
          ? Container()
          : FirestoreListView<Task>(
              query: taskListQuery,
              itemBuilder: (context, snapshot) {
                final task = snapshot.data();
                return TaskListItem(task: task);
              },
            ),
    );
  }
}
