// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_delete_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDeleteState _$_$_TaskDeleteStateFromJson(Map<String, dynamic> json) {
  return _$_TaskDeleteState(
    authUserId: json['authUserId'] as String ?? '',
    isDeleting: json['isDeleting'] as bool ?? false,
    isError: json['isError'] as bool ?? false,
    errorMessage: json['errorMessage'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_TaskDeleteStateToJson(_$_TaskDeleteState instance) =>
    <String, dynamic>{
      'authUserId': instance.authUserId,
      'isDeleting': instance.isDeleting,
      'isError': instance.isError,
      'errorMessage': instance.errorMessage,
    };
