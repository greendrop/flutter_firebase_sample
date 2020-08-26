import 'package:json_annotation/json_annotation.dart';

part 'sign_in_form.g.dart';

@JsonSerializable()
class SignInForm {
  SignInForm();

  factory SignInForm.fromJson(Map<String, dynamic> json) =>
      _$SignInFormFromJson(json);
  Map<String, dynamic> toJson() => _$SignInFormToJson(this);

  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'password')
  String password;

  static String emailValidator(String value) {
    if (value.isEmpty) {
      return "Email can't be blank";
    }
    return null;
  }

  static String passwordValidator(String value) {
    if (value.isEmpty) {
      return "Password can't be blank";
    }
    return null;
  }
}
