// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskListStateTearOff {
  const _$TaskListStateTearOff();

  _TaskListState call({Query<Task>? taskListQuery}) {
    return _TaskListState(
      taskListQuery: taskListQuery,
    );
  }
}

/// @nodoc
const $TaskListState = _$TaskListStateTearOff();

/// @nodoc
mixin _$TaskListState {
  Query<Task>? get taskListQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListStateCopyWith<TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res>;
  $Res call({Query<Task>? taskListQuery});
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  final TaskListState _value;
  // ignore: unused_field
  final $Res Function(TaskListState) _then;

  @override
  $Res call({
    Object? taskListQuery = freezed,
  }) {
    return _then(_value.copyWith(
      taskListQuery: taskListQuery == freezed
          ? _value.taskListQuery
          : taskListQuery // ignore: cast_nullable_to_non_nullable
              as Query<Task>?,
    ));
  }
}

/// @nodoc
abstract class _$TaskListStateCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$TaskListStateCopyWith(
          _TaskListState value, $Res Function(_TaskListState) then) =
      __$TaskListStateCopyWithImpl<$Res>;
  @override
  $Res call({Query<Task>? taskListQuery});
}

/// @nodoc
class __$TaskListStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res>
    implements _$TaskListStateCopyWith<$Res> {
  __$TaskListStateCopyWithImpl(
      _TaskListState _value, $Res Function(_TaskListState) _then)
      : super(_value, (v) => _then(v as _TaskListState));

  @override
  _TaskListState get _value => super._value as _TaskListState;

  @override
  $Res call({
    Object? taskListQuery = freezed,
  }) {
    return _then(_TaskListState(
      taskListQuery: taskListQuery == freezed
          ? _value.taskListQuery
          : taskListQuery // ignore: cast_nullable_to_non_nullable
              as Query<Task>?,
    ));
  }
}

/// @nodoc

class _$_TaskListState extends _TaskListState {
  _$_TaskListState({this.taskListQuery}) : super._();

  @override
  final Query<Task>? taskListQuery;

  @override
  String toString() {
    return 'TaskListState(taskListQuery: $taskListQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskListState &&
            const DeepCollectionEquality()
                .equals(other.taskListQuery, taskListQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(taskListQuery));

  @JsonKey(ignore: true)
  @override
  _$TaskListStateCopyWith<_TaskListState> get copyWith =>
      __$TaskListStateCopyWithImpl<_TaskListState>(this, _$identity);
}

abstract class _TaskListState extends TaskListState {
  factory _TaskListState({Query<Task>? taskListQuery}) = _$_TaskListState;
  _TaskListState._() : super._();

  @override
  Query<Task>? get taskListQuery;
  @override
  @JsonKey(ignore: true)
  _$TaskListStateCopyWith<_TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}
