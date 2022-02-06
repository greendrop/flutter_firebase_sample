// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskUpdateStateTearOff {
  const _$TaskUpdateStateTearOff();

  _TaskUpdateState call({DocumentReference<Task>? taskDocument}) {
    return _TaskUpdateState(
      taskDocument: taskDocument,
    );
  }
}

/// @nodoc
const $TaskUpdateState = _$TaskUpdateStateTearOff();

/// @nodoc
mixin _$TaskUpdateState {
  DocumentReference<Task>? get taskDocument =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskUpdateStateCopyWith<TaskUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskUpdateStateCopyWith<$Res> {
  factory $TaskUpdateStateCopyWith(
          TaskUpdateState value, $Res Function(TaskUpdateState) then) =
      _$TaskUpdateStateCopyWithImpl<$Res>;
  $Res call({DocumentReference<Task>? taskDocument});
}

/// @nodoc
class _$TaskUpdateStateCopyWithImpl<$Res>
    implements $TaskUpdateStateCopyWith<$Res> {
  _$TaskUpdateStateCopyWithImpl(this._value, this._then);

  final TaskUpdateState _value;
  // ignore: unused_field
  final $Res Function(TaskUpdateState) _then;

  @override
  $Res call({
    Object? taskDocument = freezed,
  }) {
    return _then(_value.copyWith(
      taskDocument: taskDocument == freezed
          ? _value.taskDocument
          : taskDocument // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Task>?,
    ));
  }
}

/// @nodoc
abstract class _$TaskUpdateStateCopyWith<$Res>
    implements $TaskUpdateStateCopyWith<$Res> {
  factory _$TaskUpdateStateCopyWith(
          _TaskUpdateState value, $Res Function(_TaskUpdateState) then) =
      __$TaskUpdateStateCopyWithImpl<$Res>;
  @override
  $Res call({DocumentReference<Task>? taskDocument});
}

/// @nodoc
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
    Object? taskDocument = freezed,
  }) {
    return _then(_TaskUpdateState(
      taskDocument: taskDocument == freezed
          ? _value.taskDocument
          : taskDocument // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Task>?,
    ));
  }
}

/// @nodoc

class _$_TaskUpdateState extends _TaskUpdateState {
  _$_TaskUpdateState({this.taskDocument}) : super._();

  @override
  final DocumentReference<Task>? taskDocument;

  @override
  String toString() {
    return 'TaskUpdateState(taskDocument: $taskDocument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskUpdateState &&
            const DeepCollectionEquality()
                .equals(other.taskDocument, taskDocument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(taskDocument));

  @JsonKey(ignore: true)
  @override
  _$TaskUpdateStateCopyWith<_TaskUpdateState> get copyWith =>
      __$TaskUpdateStateCopyWithImpl<_TaskUpdateState>(this, _$identity);
}

abstract class _TaskUpdateState extends TaskUpdateState {
  factory _TaskUpdateState({DocumentReference<Task>? taskDocument}) =
      _$_TaskUpdateState;
  _TaskUpdateState._() : super._();

  @override
  DocumentReference<Task>? get taskDocument;
  @override
  @JsonKey(ignore: true)
  _$TaskUpdateStateCopyWith<_TaskUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
