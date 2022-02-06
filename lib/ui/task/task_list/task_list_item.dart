// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/config/routes/app_router.dart';
import 'package:flutter_firebase_sample/entities/task.dart';

class TaskListItem extends HookConsumerWidget {
  const TaskListItem({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        title: Text(task.title ?? ''),
        subtitle: Text(task.description ?? ''),
        onTap: () {
          AutoRouter.of(context).push(TaskDetailRoute(id: task.id ?? ''));
        },
      ),
    );
  }
}
