// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TaskListState _$TaskListStateFromJson(Map<String, dynamic> json) {
  return _TaskListState.fromJson(json);
}

class _$TaskListStateTearOff {
  const _$TaskListStateTearOff();

// ignore: unused_element
  _TaskListState call(
      {String authUserId = '',
      List<Task> tasks,
      bool isLastFetched = true,
      bool isFetching = false,
      bool isError = false,
      String errorMessage = ''}) {
    return _TaskListState(
      authUserId: authUserId,
      tasks: tasks,
      isLastFetched: isLastFetched,
      isFetching: isFetching,
      isError: isError,
      errorMessage: errorMessage,
    );
  }
}

// ignore: unused_element
const $TaskListState = _$TaskListStateTearOff();

mixin _$TaskListState {
  String get authUserId;
  List<Task> get tasks;
  bool get isLastFetched;
  bool get isFetching;
  bool get isError;
  String get errorMessage;

  Map<String, dynamic> toJson();
  $TaskListStateCopyWith<TaskListState> get copyWith;
}

abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res>;
  $Res call(
      {String authUserId,
      List<Task> tasks,
      bool isLastFetched,
      bool isFetching,
      bool isError,
      String errorMessage});
}

class _$TaskListStateCopyWithImpl<$Res>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  final TaskListState _value;
  // ignore: unused_field
  final $Res Function(TaskListState) _then;

  @override
  $Res call({
    Object authUserId = freezed,
    Object tasks = freezed,
    Object isLastFetched = freezed,
    Object isFetching = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      authUserId:
          authUserId == freezed ? _value.authUserId : authUserId as String,
      tasks: tasks == freezed ? _value.tasks : tasks as List<Task>,
      isLastFetched: isLastFetched == freezed
          ? _value.isLastFetched
          : isLastFetched as bool,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

abstract class _$TaskListStateCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$TaskListStateCopyWith(
          _TaskListState value, $Res Function(_TaskListState) then) =
      __$TaskListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String authUserId,
      List<Task> tasks,
      bool isLastFetched,
      bool isFetching,
      bool isError,
      String errorMessage});
}

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
    Object authUserId = freezed,
    Object tasks = freezed,
    Object isLastFetched = freezed,
    Object isFetching = freezed,
    Object isError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_TaskListState(
      authUserId:
          authUserId == freezed ? _value.authUserId : authUserId as String,
      tasks: tasks == freezed ? _value.tasks : tasks as List<Task>,
      isLastFetched: isLastFetched == freezed
          ? _value.isLastFetched
          : isLastFetched as bool,
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
class _$_TaskListState implements _TaskListState {
  const _$_TaskListState(
      {this.authUserId = '',
      this.tasks,
      this.isLastFetched = true,
      this.isFetching = false,
      this.isError = false,
      this.errorMessage = ''})
      : assert(authUserId != null),
        assert(isLastFetched != null),
        assert(isFetching != null),
        assert(isError != null),
        assert(errorMessage != null);

  factory _$_TaskListState.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskListStateFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String authUserId;
  @override
  final List<Task> tasks;
  @JsonKey(defaultValue: true)
  @override
  final bool isLastFetched;
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
    return 'TaskListState(authUserId: $authUserId, tasks: $tasks, isLastFetched: $isLastFetched, isFetching: $isFetching, isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskListState &&
            (identical(other.authUserId, authUserId) ||
                const DeepCollectionEquality()
                    .equals(other.authUserId, authUserId)) &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)) &&
            (identical(other.isLastFetched, isLastFetched) ||
                const DeepCollectionEquality()
                    .equals(other.isLastFetched, isLastFetched)) &&
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
      const DeepCollectionEquality().hash(tasks) ^
      const DeepCollectionEquality().hash(isLastFetched) ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(errorMessage);

  @override
  _$TaskListStateCopyWith<_TaskListState> get copyWith =>
      __$TaskListStateCopyWithImpl<_TaskListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskListStateToJson(this);
  }
}

abstract class _TaskListState implements TaskListState {
  const factory _TaskListState(
      {String authUserId,
      List<Task> tasks,
      bool isLastFetched,
      bool isFetching,
      bool isError,
      String errorMessage}) = _$_TaskListState;

  factory _TaskListState.fromJson(Map<String, dynamic> json) =
      _$_TaskListState.fromJson;

  @override
  String get authUserId;
  @override
  List<Task> get tasks;
  @override
  bool get isLastFetched;
  @override
  bool get isFetching;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  _$TaskListStateCopyWith<_TaskListState> get copyWith;
}
