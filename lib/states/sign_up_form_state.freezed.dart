// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SignUpFormState _$SignUpFormStateFromJson(Map<String, dynamic> json) {
  return _SignUpFormState.fromJson(json);
}

class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

// ignore: unused_element
  _SignUpFormState call({SignUpForm signUpForm}) {
    return _SignUpFormState(
      signUpForm: signUpForm,
    );
  }
}

// ignore: unused_element
const $SignUpFormState = _$SignUpFormStateTearOff();

mixin _$SignUpFormState {
  SignUpForm get signUpForm;

  Map<String, dynamic> toJson();
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith;
}

abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call({SignUpForm signUpForm});
}

class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object signUpForm = freezed,
  }) {
    return _then(_value.copyWith(
      signUpForm:
          signUpForm == freezed ? _value.signUpForm : signUpForm as SignUpForm,
    ));
  }
}

abstract class _$SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignUpFormStateCopyWith(
          _SignUpFormState value, $Res Function(_SignUpFormState) then) =
      __$SignUpFormStateCopyWithImpl<$Res>;
  @override
  $Res call({SignUpForm signUpForm});
}

class __$SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignUpFormStateCopyWith<$Res> {
  __$SignUpFormStateCopyWithImpl(
      _SignUpFormState _value, $Res Function(_SignUpFormState) _then)
      : super(_value, (v) => _then(v as _SignUpFormState));

  @override
  _SignUpFormState get _value => super._value as _SignUpFormState;

  @override
  $Res call({
    Object signUpForm = freezed,
  }) {
    return _then(_SignUpFormState(
      signUpForm:
          signUpForm == freezed ? _value.signUpForm : signUpForm as SignUpForm,
    ));
  }
}

@JsonSerializable()
class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState({this.signUpForm});

  factory _$_SignUpFormState.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpFormStateFromJson(json);

  @override
  final SignUpForm signUpForm;

  @override
  String toString() {
    return 'SignUpFormState(signUpForm: $signUpForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpFormState &&
            (identical(other.signUpForm, signUpForm) ||
                const DeepCollectionEquality()
                    .equals(other.signUpForm, signUpForm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(signUpForm);

  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpFormStateToJson(this);
  }
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState({SignUpForm signUpForm}) = _$_SignUpFormState;

  factory _SignUpFormState.fromJson(Map<String, dynamic> json) =
      _$_SignUpFormState.fromJson;

  @override
  SignUpForm get signUpForm;
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith;
}
