// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_update_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskUpdateState _$_$_TaskUpdateStateFromJson(Map<String, dynamic> json) {
  return _$_TaskUpdateState(
    authUserId: json['authUserId'] as String ?? '',
    isUpdating: json['isUpdating'] as bool ?? false,
    isError: json['isError'] as bool ?? false,
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_TaskUpdateStateToJson(_$_TaskUpdateState instance) =>
    <String, dynamic>{
      'authUserId': instance.authUserId,
      'isUpdating': instance.isUpdating,
      'isError': instance.isError,
      'errorMessage': instance.errorMessage,
    };
