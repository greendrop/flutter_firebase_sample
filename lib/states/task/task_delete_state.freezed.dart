// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_delete_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TaskDeleteState _$TaskDeleteStateFromJson(Map<String, dynamic> json) {
  return _TaskDeleteState.fromJson(json);
}

class _$TaskDeleteStateTearOff {
  const _$TaskDeleteStateTearOff();

// ignore: unused_element
  _TaskDeleteState call(
      {String authUserId = '',
      bool isDeleting = false,
      bool isError = false,
      String errorMessage = ''}) {
    return _TaskDeleteState(
      authUserId: authUserId,
      isDeleting: isDeleting,
      isError: isError,
      errorMessage: errorMessage,
    );
  }
}

// ignore: unused_element
const $TaskDeleteState = _$TaskDeleteStateTearOff();

mixin _$TaskDeleteState {
  String get authUserId;
  bool get isDeleting;
  bool get isError;
  String get errorMessage;

  Map<String, dynamic> toJson();
  $TaskDeleteStateCopyWith<TaskDeleteState> get copyWith;
}

abstract class $TaskDeleteStateCopyWith<$Res> {
  factory $TaskDeleteStateCopyWith(
          TaskDeleteState value, $Res Function(TaskDeleteState) then) =
      _$TaskDeleteStateCopyWithImpl<$Res>;
  $Res call(
      {String authUserId, bool isDeleting, bool isError, String errorMessage});
}

class _$TaskDeleteStateCopyWithImpl<$Res>
    implements $TaskDeleteStateCopyWith<$Res> {
  _$TaskDeleteStateCopyWithImpl(this._value, this._then);

  final TaskDeleteState _value;
  // ignore: unused_field
  final $Res Function(TaskDeleteState) _then;

  @override
  $Res call({
    Object authUserId = freezed,
    Object isDeleting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      authUserId:
          authUserId == freezed ? _value.authUserId : authUserId as String,
      isDeleting:
          isDeleting == freezed ? _value.isDeleting : isDeleting as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

abstract class _$TaskDeleteStateCopyWith<$Res>
    implements $TaskDeleteStateCopyWith<$Res> {
  factory _$TaskDeleteStateCopyWith(
          _TaskDeleteState value, $Res Function(_TaskDeleteState) then) =
      __$TaskDeleteStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String authUserId, bool isDeleting, bool isError, String errorMessage});
}

class __$TaskDeleteStateCopyWithImpl<$Res>
    extends _$TaskDeleteStateCopyWithImpl<$Res>
    implements _$TaskDeleteStateCopyWith<$Res> {
  __$TaskDeleteStateCopyWithImpl(
      _TaskDeleteState _value, $Res Function(_TaskDeleteState) _then)
      : super(_value, (v) => _then(v as _TaskDeleteState));

  @override
  _TaskDeleteState get _value => super._value as _TaskDeleteState;

  @override
  $Res call({
    Object authUserId = freezed,
    Object isDeleting = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_TaskDeleteState(
      authUserId:
          authUserId == freezed ? _value.authUserId : authUserId as String,
      isDeleting:
          isDeleting == freezed ? _value.isDeleting : isDeleting as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

@JsonSerializable()
class _$_TaskDeleteState implements _TaskDeleteState {
  const _$_TaskDeleteState(
      {this.authUserId = '',
      this.isDeleting = false,
      this.isError = false,
      this.errorMessage = ''})
      : assert(authUserId != null),
        assert(isDeleting != null),
        assert(isError != null),
        assert(errorMessage != null);

  factory _$_TaskDeleteState.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskDeleteStateFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String authUserId;
  @JsonKey(defaultValue: false)
  @override
  final bool isDeleting;
  @JsonKey(defaultValue: false)
  @override
  final bool isError;
  @JsonKey(defaultValue: '')
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TaskDeleteState(authUserId: $authUserId, isDeleting: $isDeleting, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskDeleteState &&
            (identical(other.authUserId, authUserId) ||
                const DeepCollectionEquality()
                    .equals(other.authUserId, authUserId)) &&
            (identical(other.isDeleting, isDeleting) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleting, isDeleting)) &&
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
      const DeepCollectionEquality().hash(isDeleting) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(errorMessage);

  @override
  _$TaskDeleteStateCopyWith<_TaskDeleteState> get copyWith =>
      __$TaskDeleteStateCopyWithImpl<_TaskDeleteState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskDeleteStateToJson(this);
  }
}

abstract class _TaskDeleteState implements TaskDeleteState {
  const factory _TaskDeleteState(
      {String authUserId,
      bool isDeleting,
      bool isError,
      String errorMessage}) = _$_TaskDeleteState;

  factory _TaskDeleteState.fromJson(Map<String, dynamic> json) =
      _$_TaskDeleteState.fromJson;

  @override
  String get authUserId;
  @override
  bool get isDeleting;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  _$TaskDeleteStateCopyWith<_TaskDeleteState> get copyWith;
}
