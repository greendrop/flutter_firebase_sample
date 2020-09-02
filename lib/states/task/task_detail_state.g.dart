// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_detail_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDetailState _$_$_TaskDetailStateFromJson(Map<String, dynamic> json) {
  return _$_TaskDetailState(
    authUserId: json['authUserId'] as String ?? '',
    task: json['task'] == null
        ? null
        : Task.fromJson(json['task'] as Map<String, dynamic>),
    isFetching: json['isFetching'] as bool ?? false,
    isError: json['isError'] as bool ?? false,
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_TaskDetailStateToJson(_$_TaskDetailState instance) =>
    <String, dynamic>{
      'authUserId': instance.authUserId,
      'task': instance.task,
      'isFetching': instance.isFetching,
      'isError': instance.isError,
      'errorMessage': instance.errorMessage,
    };
