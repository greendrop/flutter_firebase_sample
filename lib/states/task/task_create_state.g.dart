// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_create_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskCreateState _$_$_TaskCreateStateFromJson(Map<String, dynamic> json) {
  return _$_TaskCreateState(
    authUserId: json['authUserId'] as String ?? '',
    isCreating: json['isCreating'] as bool ?? false,
    isError: json['isError'] as bool ?? false,
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_TaskCreateStateToJson(_$_TaskCreateState instance) =>
    <String, dynamic>{
      'authUserId': instance.authUserId,
      'isCreating': instance.isCreating,
      'isError': instance.isError,
      'errorMessage': instance.errorMessage,
    };
