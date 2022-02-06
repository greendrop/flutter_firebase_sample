// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_firebase_sample/ui/drawer/drawer_content.dart';
import 'package:flutter_firebase_sample/ui/task/task_create/task_create.dart';
import 'package:flutter_firebase_sample/ui/widgets/app_bar_leading.dart';

class TaskCreatePage extends HookConsumerWidget {
  const TaskCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBar = AppBar(
      title: Text(L10n.of(context)!.taskCreateTitle),
      leading: const AppBarLeading(),
    );
    const drawer = DrawerContent();
    const body = TaskCreate();

    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: body,
    );
  }
}
