// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TaskCreateState _$TaskCreateStateFromJson(Map<String, dynamic> json) {
  return _TaskCreateState.fromJson(json);
}

class _$TaskCreateStateTearOff {
  const _$TaskCreateStateTearOff();

// ignore: unused_element
  _TaskCreateState call(
      {String authUserId = '',
      bool isCreating = false,
      bool isError = false,
      String errorMessage = ''}) {
    return _TaskCreateState(
      authUserId: authUserId,
      isCreating: isCreating,
      isError: isError,
      errorMessage: errorMessage,
    );
  }
}

// ignore: unused_element
const $TaskCreateState = _$TaskCreateStateTearOff();

mixin _$TaskCreateState {
  String get authUserId;
  bool get isCreating;
  bool get isError;
  String get errorMessage;

  Map<String, dynamic> toJson();
  $TaskCreateStateCopyWith<TaskCreateState> get copyWith;
}

abstract class $TaskCreateStateCopyWith<$Res> {
  factory $TaskCreateStateCopyWith(
          TaskCreateState value, $Res Function(TaskCreateState) then) =
      _$TaskCreateStateCopyWithImpl<$Res>;
  $Res call(
      {String authUserId, bool isCreating, bool isError, String errorMessage});
}

class _$TaskCreateStateCopyWithImpl<$Res>
    implements $TaskCreateStateCopyWith<$Res> {
  _$TaskCreateStateCopyWithImpl(this._value, this._then);

  final TaskCreateState _value;
  // ignore: unused_field
  final $Res Function(TaskCreateState) _then;

  @override
  $Res call({
    Object authUserId = freezed,
    Object isCreating = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      authUserId:
          authUserId == freezed ? _value.authUserId : authUserId as String,
      isCreating:
          isCreating == freezed ? _value.isCreating : isCreating as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

abstract class _$TaskCreateStateCopyWith<$Res>
    implements $TaskCreateStateCopyWith<$Res> {
  factory _$TaskCreateStateCopyWith(
          _TaskCreateState value, $Res Function(_TaskCreateState) then) =
      __$TaskCreateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String authUserId, bool isCreating, bool isError, String errorMessage});
}

class __$TaskCreateStateCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res>
    implements _$TaskCreateStateCopyWith<$Res> {
  __$TaskCreateStateCopyWithImpl(
      _TaskCreateState _value, $Res Function(_TaskCreateState) _then)
      : super(_value, (v) => _then(v as _TaskCreateState));

  @override
  _TaskCreateState get _value => super._value as _TaskCreateState;

  @override
  $Res call({
    Object authUserId = freezed,
    Object isCreating = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_TaskCreateState(
      authUserId:
          authUserId == freezed ? _value.authUserId : authUserId as String,
      isCreating:
          isCreating == freezed ? _value.isCreating : isCreating as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

@JsonSerializable()
class _$_TaskCreateState implements _TaskCreateState {
  const _$_TaskCreateState(
      {this.authUserId = '',
      this.isCreating = false,
      this.isError = false,
      this.errorMessage = ''})
      : assert(authUserId != null),
        assert(isCreating != null),
        assert(isError != null),
        assert(errorMessage != null);

  factory _$_TaskCreateState.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskCreateStateFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String authUserId;
  @JsonKey(defaultValue: false)
  @override
  final bool isCreating;
  @JsonKey(defaultValue: false)
  @override
  final bool isError;
  @JsonKey(defaultValue: '')
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TaskCreateState(authUserId: $authUserId, isCreating: $isCreating, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskCreateState &&
            (identical(other.authUserId, authUserId) ||
                const DeepCollectionEquality()
                    .equals(other.authUserId, authUserId)) &&
            (identical(other.isCreating, isCreating) ||
                const DeepCollectionEquality()
                    .equals(other.isCreating, isCreating)) &&
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
      const DeepCollectionEquality().hash(isCreating) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(errorMessage);

  @override
  _$TaskCreateStateCopyWith<_TaskCreateState> get copyWith =>
      __$TaskCreateStateCopyWithImpl<_TaskCreateState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskCreateStateToJson(this);
  }
}

abstract class _TaskCreateState implements TaskCreateState {
  const factory _TaskCreateState(
      {String authUserId,
      bool isCreating,
      bool isError,
      String errorMessage}) = _$_TaskCreateState;

  factory _TaskCreateState.fromJson(Map<String, dynamic> json) =
      _$_TaskCreateState.fromJson;

  @override
  String get authUserId;
  @override
  bool get isCreating;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  _$TaskCreateStateCopyWith<_TaskCreateState> get copyWith;
}
