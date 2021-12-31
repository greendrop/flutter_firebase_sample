// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskDetailStateTearOff {
  const _$TaskDetailStateTearOff();

  _TaskDetailState call({DocumentReference<Task>? taskDocument}) {
    return _TaskDetailState(
      taskDocument: taskDocument,
    );
  }
}

/// @nodoc
const $TaskDetailState = _$TaskDetailStateTearOff();

/// @nodoc
mixin _$TaskDetailState {
  DocumentReference<Task>? get taskDocument =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDetailStateCopyWith<TaskDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailStateCopyWith(
          TaskDetailState value, $Res Function(TaskDetailState) then) =
      _$TaskDetailStateCopyWithImpl<$Res>;
  $Res call({DocumentReference<Task>? taskDocument});
}

/// @nodoc
class _$TaskDetailStateCopyWithImpl<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  _$TaskDetailStateCopyWithImpl(this._value, this._then);

  final TaskDetailState _value;
  // ignore: unused_field
  final $Res Function(TaskDetailState) _then;

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
abstract class _$TaskDetailStateCopyWith<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  factory _$TaskDetailStateCopyWith(
          _TaskDetailState value, $Res Function(_TaskDetailState) then) =
      __$TaskDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({DocumentReference<Task>? taskDocument});
}

/// @nodoc
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
    Object? taskDocument = freezed,
  }) {
    return _then(_TaskDetailState(
      taskDocument: taskDocument == freezed
          ? _value.taskDocument
          : taskDocument // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Task>?,
    ));
  }
}

/// @nodoc

class _$_TaskDetailState extends _TaskDetailState {
  _$_TaskDetailState({this.taskDocument}) : super._();

  @override
  final DocumentReference<Task>? taskDocument;

  @override
  String toString() {
    return 'TaskDetailState(taskDocument: $taskDocument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskDetailState &&
            const DeepCollectionEquality()
                .equals(other.taskDocument, taskDocument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(taskDocument));

  @JsonKey(ignore: true)
  @override
  _$TaskDetailStateCopyWith<_TaskDetailState> get copyWith =>
      __$TaskDetailStateCopyWithImpl<_TaskDetailState>(this, _$identity);
}

abstract class _TaskDetailState extends TaskDetailState {
  factory _TaskDetailState({DocumentReference<Task>? taskDocument}) =
      _$_TaskDetailState;
  _TaskDetailState._() : super._();

  @override
  DocumentReference<Task>? get taskDocument;
  @override
  @JsonKey(ignore: true)
  _$TaskDetailStateCopyWith<_TaskDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
