import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/organisms/drawer_content.dart';
import 'package:flutter_firebase_sample/components/organisms/task_list_body.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/pages/task/task_new_page.dart';
import 'package:flutter_firebase_sample/states/task/task_list_state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class TaskListPage extends StatefulWidget {
  static String routeName = '/task/list';

  @override
  _TaskListPageState createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final _title = 'Task list';
  final _appConfig = AppConfig();
  bool isInitialized = false;

  @override
  Widget build(BuildContext context) {
    if (isInitialized == false) {
      Timer.run(() async {
        final taskListState =
            await context.read<TaskListStateNotifier>().fetchTasks();
        if (taskListState.isError) {
          await Fluttertoast.showToast(
            msg: taskListState.errorMessage,
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
        title: Text(_title),
      ),
      drawer: DrawerContent(),
      body: TaskListBody(),
      floatingActionButton: _NewFloatingActionButton(),
    );
  }
}

class _NewFloatingActionButton extends StatelessWidget {
  final _appConfig = AppConfig();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamed(TaskNewPage.routeName)
              .then((value) async {
            final taskListState =
                await context.read<TaskListStateNotifier>().fetchTasks();
            if (taskListState.isError) {
              await Fluttertoast.showToast(
                msg: taskListState.errorMessage,
                backgroundColor: _appConfig.colors.toastBackground,
                textColor: _appConfig.colors.toastText,
              );
            }
          });
        },
        tooltip: 'Create',
        child: const Icon(Icons.add));
  }
}
