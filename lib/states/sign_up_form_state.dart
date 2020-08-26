import 'package:flutter_firebase_sample/models/sign_up_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'sign_up_form_state.freezed.dart';
part 'sign_up_form_state.g.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    SignUpForm signUpForm,
  }) = _SignUpFormState;
  factory SignUpFormState.fromJson(Map<String, dynamic> json) {
    return _$SignUpFormStateFromJson(json);
  }
}

class SignUpFormStateNotifier extends StateNotifier<SignUpFormState> {
  SignUpFormStateNotifier() : super(const SignUpFormState());

  SignUpFormState setSignUpForm(SignUpForm signUpForm) {
    return state = state.copyWith(signUpForm: signUpForm);
  }

  SignUpFormState clear() {
    setSignUpForm(SignUpForm());
    return state;
  }

  void handleEmail(String value) {
    final signUpForm = SignUpForm.fromJson(state.signUpForm.toJson())
      ..email = value;
    setSignUpForm(signUpForm);
  }

  void handlePassword(String value) {
    final signUpForm = SignUpForm.fromJson(state.signUpForm.toJson())
      ..password = value;
    setSignUpForm(signUpForm);
  }
}
