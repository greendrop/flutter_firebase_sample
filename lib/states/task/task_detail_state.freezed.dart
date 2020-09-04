// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TaskDetailState _$TaskDetailStateFromJson(Map<String, dynamic> json) {
  return _TaskDetailState.fromJson(json);
}

class _$TaskDetailStateTearOff {
  const _$TaskDetailStateTearOff();

// ignore: unused_element
  _TaskDetailState call(
      {String authUserId = '',
      Task task,
      bool isFetching = false,
      bool isError = false,
      String errorMessage = ''}) {
    return _TaskDetailState(
      authUserId: authUserId,
      task: task,
      isFetching: isFetching,
      isError: isError,
      errorMessage: errorMessage,
    );
  }
}

// ignore: unused_element
const $TaskDetailState = _$TaskDetailStateTearOff();

mixin _$TaskDetailState {
  String get authUserId;
  Task get task;
  bool get isFetching;
  bool get isError;
  String get errorMessage;

  Map<String, dynamic> toJson();
  $TaskDetailStateCopyWith<TaskDetailState> get copyWith;
}

abstract class $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailStateCopyWith(
          TaskDetailState value, $Res Function(TaskDetailState) then) =
      _$TaskDetailStateCopyWithImpl<$Res>;
  $Res call(
      {String authUserId,
      Task task,
      bool isFetching,
      bool isError,
      String errorMessage});
}

class _$TaskDetailStateCopyWithImpl<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  _$TaskDetailStateCopyWithImpl(this._value, this._then);

  final TaskDetailState _value;
  // ignore: unused_field
  final $Res Function(TaskDetailState) _then;

  @override
  $Res call({
    Object authUserId = freezed,
    Object task = freezed,
    Object isFetching = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      authUserId:
          authUserId == freezed ? _value.authUserId : authUserId as String,
      task: task == freezed ? _value.task : task as Task,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

abstract class _$TaskDetailStateCopyWith<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  factory _$TaskDetailStateCopyWith(
          _TaskDetailState value, $Res Function(_TaskDetailState) then) =
      __$TaskDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String authUserId,
      Task task,
      bool isFetching,
      bool isError,
      String errorMessage});
}

class __$TaskDetailStateCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res>
    implements _$TaskDetailStateCopyWith<$Res> {
  __$TaskDetailStateCopyWithImpl(
      _TaskDetailState _value, $Res Function(_TaskDetailState) _then)
      : super(_value, (v) => _then(v as _TaskDetailState));

  @override
  _TaskDetailState get _value => super._value as _TaskDetailState;

  @override
  $Res call({
    Object authUserId = freezed,
    Object task = freezed,
    Object isFetching = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_TaskDetailState(
      authUserId:
          authUserId == freezed ? _value.authUserId : authUserId as String,
      task: task == freezed ? _value.task : task as Task,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

@JsonSerializable()
class _$_TaskDetailState implements _TaskDetailState {
  const _$_TaskDetailState(
      {this.authUserId = '',
      this.task,
      this.isFetching = false,
      this.isError = false,
      this.errorMessage = ''})
      : assert(authUserId != null),
        assert(isFetching != null),
        assert(isError != null),
        assert(errorMessage != null);

  factory _$_TaskDetailState.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskDetailStateFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String authUserId;
  @override
  final Task task;
  @JsonKey(defaultValue: false)
  @override
  final bool isFetching;
  @JsonKey(defaultValue: false)
  @override
  final bool isError;
  @JsonKey(defaultValue: '')
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TaskDetailState(authUserId: $authUserId, task: $task, isFetching: $isFetching, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskDetailState &&
            (identical(other.authUserId, authUserId) ||
                const DeepCollectionEquality()
                    .equals(other.authUserId, authUserId)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)) &&
            (identical(other.isError, isError) ||
                const DeepCollectionEquality()
                    .equals(other.isError, isError)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authUserId) ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(errorMessage);

  @override
  _$TaskDetailStateCopyWith<_TaskDetailState> get copyWith =>
      __$TaskDetailStateCopyWithImpl<_TaskDetailState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskDetailStateToJson(this);
  }
}

abstract class _TaskDetailState implements TaskDetailState {
  const factory _TaskDetailState(
      {String authUserId,
      Task task,
      bool isFetching,
      bool isError,
      String errorMessage}) = _$_TaskDetailState;

  factory _TaskDetailState.fromJson(Map<String, dynamic> json) =
      _$_TaskDetailState.fromJson;

  @override
  String get authUserId;
  @override
  Task get task;
  @override
  bool get isFetching;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  _$TaskDetailStateCopyWith<_TaskDetailState> get copyWith;
}
