import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/atoms/center_circular_progress_indicator.dart';
import 'package:flutter_firebase_sample/components/molecules/task_form_fields.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/models/task_form.dart';
import 'package:flutter_firebase_sample/states/task/task_create_state.dart';
import 'package:flutter_firebase_sample/states/task/task_form_state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class TaskNewBody extends StatefulWidget {
  @override
  _TaskNewBodyState createState() => _TaskNewBodyState();
}

class _TaskNewBodyState extends State<TaskNewBody> {
  final _appConfig = AppConfig();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final taskForm =
        context.select<TaskFormState, TaskForm>((state) => state.taskForm);

    final isCreating =
        context.select<TaskCreateState, bool>((state) => state.isCreating);

    if (isCreating) {
      return CenterCircularProgressIndicator();
    }

    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TaskFormFields(),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: RaisedButton(
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              final taskCreateState = await context
                                  .read<TaskCreateStateNotifier>()
                                  .createTask(taskForm);

                              if (!taskCreateState.isError) {
                                Navigator.of(context).pop();
                                await Fluttertoast.showToast(
                                  msg: 'Created Task.',
                                  backgroundColor:
                                      _appConfig.colors.toastBackground,
                                  textColor: _appConfig.colors.toastText,
                                );
                              }
                            }
                          },
                          child: const Text('CREATE'),
                        ))
                  ]))
            ]));
  }
}
