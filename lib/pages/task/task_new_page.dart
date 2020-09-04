import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/organisms/task_new_body.dart';
import 'package:flutter_firebase_sample/states/task/task_create_state.dart';
import 'package:flutter_firebase_sample/states/task/task_form_state.dart';
import 'package:provider/provider.dart';

class TaskNewPage extends StatefulWidget {
  static String routeName = '/task/new';

  @override
  _TaskNewPageState createState() => _TaskNewPageState();
}

class _TaskNewPageState extends State<TaskNewPage> {
  final title = 'New Task';
  bool isInitialized = false;

  @override
  Widget build(BuildContext context) {
    if (isInitialized == false) {
      Timer.run(() {
        context.read<TaskFormStateNotifier>().clear();
        context.read<TaskCreateStateNotifier>().clear();
        setState(() {
          isInitialized = true;
        });
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: isInitialized ? TaskNewBody() : Container(),
    );
  }
}
