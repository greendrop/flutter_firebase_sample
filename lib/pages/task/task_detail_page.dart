import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/organisms/task_detail_body.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/states/task/task_detail_state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class TaskDetailPage extends StatefulWidget {
  static String routeName = '/task/detail';

  @override
  _TaskDetailPageState createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  final _appConfig = AppConfig();
  final title = 'Task detail';
  bool isInitialized = false;
  TaskDetailArguments arguments;

  @override
  Widget build(BuildContext context) {
    if (isInitialized == false) {
      arguments =
          ModalRoute.of(context).settings.arguments as TaskDetailArguments;
      Timer.run(() async {
        context.read<TaskDetailStateNotifier>().clear();
        // context.read<TaskDeleteStateNotifier>().clear();
        final taskDetailState = await context
            .read<TaskDetailStateNotifier>()
            .fetchTaskById(arguments.id);
        if (taskDetailState.isError) {
          await Fluttertoast.showToast(
            msg: taskDetailState.errorMessage,
            backgroundColor: _appConfig.colors.toastBackground,
            textColor: _appConfig.colors.toastText,
          );
        }
        setState(() {
          isInitialized = true;
        });
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: TaskDetailBody(),
    );
  }
}

class TaskDetailArguments {
  TaskDetailArguments(this.id);

  String id;
}
