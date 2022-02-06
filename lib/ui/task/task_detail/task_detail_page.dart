// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/entities/task.dart';
import 'package:flutter_firebase_sample/providers/task/task_detail_state_notifier_provider.dart';
import 'package:flutter_firebase_sample/ui/drawer/drawer_content.dart';
import 'package:flutter_firebase_sample/ui/task/task_detail/task_detail.dart';
import 'package:flutter_firebase_sample/ui/widgets/app_bar_leading.dart';

class TaskDetailPage extends HookConsumerWidget {
  const TaskDetailPage({Key? key, @PathParam('id') required this.id})
      : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Timer.run(() {
        ref
            .read(taskDetailStateNotifierProvider.notifier)
            .buildTaskDocument(id);
      });
      return () {};
    }, []);

    final appBar = AppBar(
      title: Text(L10n.of(context)!.taskDetailTitle),
      leading: const AppBarLeading(),
    );
    const drawer = DrawerContent();
    final taskDetailState = ref.watch(taskDetailStateNotifierProvider);
    final taskDocument = taskDetailState.taskDocument;
    final body = taskDocument == null
        ? Container()
        : StreamBuilder<DocumentSnapshot<Task>>(
            stream: taskDocument.snapshots(),
            builder: (context, snapshot) {
              final task = snapshot.data?.data();
              return task == null ? Container() : TaskDetail(task: task);
            });

    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: body,
    );
  }
}
