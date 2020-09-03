import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/atoms/center_circular_progress_indicator.dart';
import 'package:flutter_firebase_sample/helpers/filter.dart';
import 'package:flutter_firebase_sample/models/task.dart';
import 'package:flutter_firebase_sample/pages/task/task_edit_page.dart';
import 'package:flutter_firebase_sample/states/task/task_detail_state.dart';
import 'package:provider/provider.dart';

class TaskDetailBody extends StatefulWidget {
  @override
  _TaskDetailBodyState createState() => _TaskDetailBodyState();
}

class _TaskDetailBodyState extends State<TaskDetailBody> {
  final _formKey = GlobalKey<FormState>();
  final _titleTextEditingController = TextEditingController();
  final _descriptionTextEditingController = TextEditingController();
  final _createdAtTextEditingController = TextEditingController();
  final _updatedAtTextEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _titleTextEditingController.dispose();
    _descriptionTextEditingController.dispose();
    _createdAtTextEditingController.dispose();
    _updatedAtTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final task = context.select<TaskDetailState, Task>((state) => state.task);
    final isFetching =
        context.select<TaskDetailState, bool>((state) => state.isFetching);

    if (isFetching) {
      return CenterCircularProgressIndicator();
    }

    if (task == null) {
      return Container();
    }

    _titleTextEditingController.text = task.title ?? '';
    _descriptionTextEditingController.text = task.description ?? '';
    _createdAtTextEditingController.text = Filter.datetime(task.createdAt);
    _updatedAtTextEditingController.text = Filter.datetime(task.updatedAt);

    final themeData = Theme.of(context);

    return Form(
        key: _formKey,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: _titleTextEditingController,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                    ),
                    readOnly: true,
                  ),
                  TextFormField(
                    controller: _descriptionTextEditingController,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                    ),
                    readOnly: true,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Done',
                              style: themeData.textTheme.subtitle1.copyWith(
                                  color: themeData.disabledColor,
                                  fontSize: 12)),
                          Switch(
                            value: task.done,
                            onChanged: (bool value) {},
                          )
                        ],
                      )),
                  TextFormField(
                    controller: _createdAtTextEditingController,
                    decoration: const InputDecoration(
                      labelText: 'Created at',
                    ),
                    readOnly: true,
                  ),
                  TextFormField(
                    controller: _updatedAtTextEditingController,
                    decoration: const InputDecoration(
                      labelText: 'Updated at',
                    ),
                    readOnly: true,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(TaskEditPage.routeName,
                                        arguments: TaskEditArguments(task.id))
                                    .then((value) {
                                  context
                                      .read<TaskDetailStateNotifier>()
                                      .fetchTaskById(task.id);
                                });
                              },
                              child: const Text('EDIT'),
                            )),
                        Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: RaisedButton(
                                onPressed: () async {
                                  final result = await _showDeleteDialog();
                                  if (result == 'OK') {
                                    /*
                                final taskDeleteState = await context
                                    .read<TaskDeleteStateNotifier>()
                                    .deleteTask(task.id);
                                if (!taskDeleteState.isError) {
                                  Navigator.of(context).pop();
                                  await Fluttertoast.showToast(
                                    msg: 'Deleted Task.',
                                    backgroundColor:
                                    _appConfig.toastBackgroundColor,
                                    textColor: _appConfig.toastTextColor,
                                  );
                                }
                                 */
                                  }
                                },
                                child: const Text('DELETE'))),
                      ]))
                ])));
  }

  Future<String> _showDeleteDialog() async {
    return showDialog<String>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Delete Task'),
            content: const Text('Are you sure?'),
            actions: <Widget>[
              FlatButton(
                child: const Text('CANCEL'),
                onPressed: () => Navigator.pop(context, 'CANCEL'),
              ),
              FlatButton(
                child: const Text('OK'),
                onPressed: () => Navigator.pop(context, 'OK'),
              )
            ],
          );
        });
  }
}
