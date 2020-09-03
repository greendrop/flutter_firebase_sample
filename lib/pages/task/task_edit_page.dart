import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/organisms/task_edit_body.dart';
import 'package:flutter_firebase_sample/models/task_form.dart';
import 'package:flutter_firebase_sample/states/task/task_detail_state.dart';
import 'package:flutter_firebase_sample/states/task/task_form_state.dart';
import 'package:flutter_firebase_sample/states/task/task_update_state.dart';
import 'package:provider/provider.dart';

class TaskEditPage extends StatefulWidget {
  static String routeName = '/task/edit';

  @override
  _TaskEditPageState createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
  final title = 'Edit Task';
  bool isInitialized = false;
  TaskEditArguments arguments;

  @override
  Widget build(BuildContext context) {
    if (isInitialized == false) {
      arguments =
          ModalRoute.of(context).settings.arguments as TaskEditArguments;
      Timer.run(() async {
        context.read<TaskFormStateNotifier>().clear();
        context.read<TaskUpdateStateNotifier>().clear();
        setState(() {
          isInitialized = true;
        });

        final taskDetailState = await context
            .read<TaskDetailStateNotifier>()
            .fetchTaskById(arguments.id);
        final task = taskDetailState.task;
        if (task != null) {
          context
              .read<TaskFormStateNotifier>()
              .setTaskForm(TaskForm.fromJson(task.toJson()));
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: isInitialized ? TaskEditBody() : Container(),
    );
  }
}

class TaskEditArguments {
  TaskEditArguments(this.id);

  String id;
}
