// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/config/routes/app_router.dart';
import 'package:flutter_firebase_sample/entities/task.dart';

class TaskDetail extends HookConsumerWidget {
  const TaskDetail({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context)!;

    return Card(
      child: Column(
        children: [
          Table(
            columnWidths: const <int, TableColumnWidth>{
              0: IntrinsicColumnWidth(),
              1: FlexColumnWidth()
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            children: [
              TableRow(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(l10n.taskId, style: theme.textTheme.caption)),
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child:
                          Text(task.id ?? '', style: theme.textTheme.bodyText1))
                ],
              ),
              TableRow(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child:
                          Text(l10n.taskTitle, style: theme.textTheme.caption)),
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(task.title ?? '',
                          style: theme.textTheme.bodyText1))
                ],
              ),
              TableRow(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(l10n.taskDescription,
                          style: theme.textTheme.caption)),
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(task.description ?? '',
                          style: theme.textTheme.bodyText1))
                ],
              ),
              TableRow(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(l10n.taskCreatedAt,
                          style: theme.textTheme.caption)),
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(
                          task.createdAt != null
                              ? task.createdAt.toString()
                              : '',
                          style: theme.textTheme.bodyText1))
                ],
              ),
              TableRow(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(l10n.taskUpdatedAt,
                          style: theme.textTheme.caption)),
                  Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(
                          task.updatedAt != null
                              ? task.updatedAt.toString()
                              : '',
                          style: theme.textTheme.bodyText1))
                ],
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
              onPressed: () {
                AutoRouter.of(context).push(TaskUpdateRoute(id: task.id ?? ''));
              },
              child: Text(l10n.edit),
            )
          ])
        ],
      ),
    );
  }
}
