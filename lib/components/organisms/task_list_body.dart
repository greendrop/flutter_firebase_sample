import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/atoms/center_circular_progress_indicator.dart';
import 'package:flutter_firebase_sample/components/molecules/task_list_item.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/models/task.dart';
import 'package:flutter_firebase_sample/states/task/task_list_state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class TaskListBody extends StatelessWidget {
  final _appConfig = AppConfig();

  @override
  Widget build(BuildContext context) {
    Future<void> _onRefresh() async {
      final taskListState =
          await context.read<TaskListStateNotifier>().fetchTasks();
      if (taskListState.isError) {
        await Fluttertoast.showToast(
          msg: taskListState.errorMessage,
          backgroundColor: _appConfig.colors.toastBackground,
          textColor: _appConfig.colors.toastText,
        );
      }
    }

    final tasks =
        context.select<TaskListState, List<Task>>((state) => state.tasks);
    final isFetching =
        context.select<TaskListState, bool>((state) => state.isFetching);
    final isLastFetched =
        context.select<TaskListState, bool>((state) => state.isLastFetched);

    final listItems = <Widget>[
      ...(tasks ?? []).map((item) => TaskListItem(item))
    ];

    final listView =
        ListView.builder(itemBuilder: (BuildContext context, int index) {
      final length = listItems?.length ?? 0;

      if (index == length) {
        if (!isLastFetched) {
          Timer.run(() async {
            final taskListState = await context
                .read<TaskListStateNotifier>()
                .fetchAdditionalTasks();
            if (taskListState.isError) {
              await Fluttertoast.showToast(
                msg: taskListState.errorMessage,
                backgroundColor: _appConfig.colors.toastBackground,
                textColor: _appConfig.colors.toastText,
              );
            }
          });

          return CenterCircularProgressIndicator();
        } else {
          if (isFetching) {
            return CenterCircularProgressIndicator();
          } else {
            return null;
          }
        }
      } else if (index > length) {
        return null;
      }

      return listItems[index];
    });

    return RefreshIndicator(
        onRefresh: _onRefresh,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: listView,
        ));
  }
}
