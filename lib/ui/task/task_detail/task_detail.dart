// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/config/routes/app_router.dart';
import 'package:flutter_firebase_sample/entities/task.dart';
import 'package:flutter_firebase_sample/providers/task/task_delete_state_notifier_provider.dart';

class TaskDetail extends HookConsumerWidget {
  const TaskDetail({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context)!;

    final editButton = TextButton(
      onPressed: () {
        AutoRouter.of(context).push(TaskUpdateRoute(id: task.id ?? ''));
      },
      child: Text(l10n.edit),
    );
    final deleteButton = TextButton(
      onPressed: () async {
        final result = await _showDeleteDialog(context);
        if (result == 'OK') {
          try {
            final navigatorState = Navigator.of(context);
            final scaffoldMessengerState = ScaffoldMessenger.of(context);

            await ref
                .read(taskDeleteStateNotifierProvider.notifier)
                .deleteTask(task);

            final snackBar = SnackBar(content: Text(l10n.taskDeleted));
            scaffoldMessengerState.showSnackBar(snackBar);
            navigatorState.pop();
          } on Exception catch (_) {
            final snackBar = SnackBar(content: Text(l10n.occurredError));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        }
      },
      child: Text(
        l10n.delete,
        style: theme.textTheme.button?.copyWith(
          color: Colors.red,
        ),
      ),
    );

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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [editButton, deleteButton],
          )
        ],
      ),
    );
  }

  Future<String?> _showDeleteDialog(BuildContext context) async {
    final l10n = L10n.of(context)!;

    return showDialog<String>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(l10n.delete),
            content: Text(l10n.taskDeleteConfirm),
            actions: <Widget>[
              TextButton(
                child: Text(l10n.cancel),
                onPressed: () => Navigator.pop(context, 'CANCEL'),
              ),
              TextButton(
                child: Text(l10n.ok),
                onPressed: () => Navigator.pop(context, 'OK'),
              )
            ],
          );
        });
  }
}
