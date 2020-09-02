// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskListState _$_$_TaskListStateFromJson(Map<String, dynamic> json) {
  return _$_TaskListState(
    authUserId: json['authUserId'] as String ?? '',
    tasks: (json['tasks'] as List)
        ?.map(
            (e) => e == null ? null : Task.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isLastFetched: json['isLastFetched'] as bool ?? true,
    isFetching: json['isFetching'] as bool ?? false,
    isError: json['isError'] as bool ?? false,
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_TaskListStateToJson(_$_TaskListState instance) =>
    <String, dynamic>{
      'authUserId': instance.authUserId,
      'tasks': instance.tasks,
      'isLastFetched': instance.isLastFetched,
      'isFetching': instance.isFetching,
      'isError': instance.isError,
      'errorMessage': instance.errorMessage,
    };
