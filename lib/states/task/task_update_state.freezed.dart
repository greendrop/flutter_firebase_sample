// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TaskUpdateState _$TaskUpdateStateFromJson(Map<String, dynamic> json) {
  return _TaskUpdateState.fromJson(json);
}

class _$TaskUpdateStateTearOff {
  const _$TaskUpdateStateTearOff();

// ignore: unused_element
  _TaskUpdateState call(
      {String authUserId = '',
      bool isUpdating = false,
      bool isError = false,
      String errorMessage = ''}) {
    return _TaskUpdateState(
      authUserId: authUserId,
      isUpdating: isUpdating,
      isError: isError,
      errorMessage: errorMessage,
    );
  }
}

// ignore: unused_element
const $TaskUpdateState = _$TaskUpdateStateTearOff();

mixin _$TaskUpdateState {
  String get authUserId;
  bool get isUpdating;
  bool get isError;
  String get errorMessage;

  Map<String, dynamic> toJson();
  $TaskUpdateStateCopyWith<TaskUpdateState> get copyWith;
}

abstract class $TaskUpdateStateCopyWith<$Res> {
  factory $TaskUpdateStateCopyWith(
          TaskUpdateState value, $Res Function(TaskUpdateState) then) =
      _$TaskUpdateStateCopyWithImpl<$Res>;
  $Res call(
      {String authUserId, bool isUpdating, bool isError, String errorMessage});
}

class _$TaskUpdateStateCopyWithImpl<$Res>
    implements $TaskUpdateStateCopyWith<$Res> {
  _$TaskUpdateStateCopyWithImpl(this._value, this._then);

  final TaskUpdateState _value;
  // ignore: unused_field
  final $Res Function(TaskUpdateState) _then;

  @override
  $Res call({
    Object authUserId = freezed,
    Object isUpdating = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      authUserId:
          authUserId == freezed ? _value.authUserId : authUserId as String,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

abstract class _$TaskUpdateStateCopyWith<$Res>
    implements $TaskUpdateStateCopyWith<$Res> {
  factory _$TaskUpdateStateCopyWith(
          _TaskUpdateState value, $Res Function(_TaskUpdateState) then) =
      __$TaskUpdateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String authUserId, bool isUpdating, bool isError, String errorMessage});
}

class __$TaskUpdateStateCopyWithImpl<$Res>
    extends _$TaskUpdateStateCopyWithImpl<$Res>
    implements _$TaskUpdateStateCopyWith<$Res> {
  __$TaskUpdateStateCopyWithImpl(
      _TaskUpdateState _value, $Res Function(_TaskUpdateState) _then)
      : super(_value, (v) => _then(v as _TaskUpdateState));

  @override
  _TaskUpdateState get _value => super._value as _TaskUpdateState;

  @override
  $Res call({
    Object authUserId = freezed,
    Object isUpdating = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_TaskUpdateState(
      authUserId:
          authUserId == freezed ? _value.authUserId : authUserId as String,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

@JsonSerializable()
class _$_TaskUpdateState implements _TaskUpdateState {
  const _$_TaskUpdateState(
      {this.authUserId = '',
      this.isUpdating = false,
      this.isError = false,
      this.errorMessage = ''})
      : assert(authUserId != null),
        assert(isUpdating != null),
        assert(isError != null),
        assert(errorMessage != null);

  factory _$_TaskUpdateState.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskUpdateStateFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String authUserId;
  @JsonKey(defaultValue: false)
  @override
  final bool isUpdating;
  @JsonKey(defaultValue: false)
  @override
  final bool isError;
  @JsonKey(defaultValue: '')
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TaskUpdateState(authUserId: $authUserId, isUpdating: $isUpdating, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskUpdateState &&
            (identical(other.authUserId, authUserId) ||
                const DeepCollectionEquality()
                    .equals(other.authUserId, authUserId)) &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)) &&
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
      const DeepCollectionEquality().hash(isUpdating) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(errorMessage);

  @override
  _$TaskUpdateStateCopyWith<_TaskUpdateState> get copyWith =>
      __$TaskUpdateStateCopyWithImpl<_TaskUpdateState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskUpdateStateToJson(this);
  }
}

abstract class _TaskUpdateState implements TaskUpdateState {
  const factory _TaskUpdateState(
      {String authUserId,
      bool isUpdating,
      bool isError,
      String errorMessage}) = _$_TaskUpdateState;

  factory _TaskUpdateState.fromJson(Map<String, dynamic> json) =
      _$_TaskUpdateState.fromJson;

  @override
  String get authUserId;
  @override
  bool get isUpdating;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  _$TaskUpdateStateCopyWith<_TaskUpdateState> get copyWith;
}
