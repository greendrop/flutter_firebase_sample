import 'package:json_annotation/json_annotation.dart';

part 'sign_up_form.g.dart';

@JsonSerializable()
class SignUpForm {
  SignUpForm();

  factory SignUpForm.fromJson(Map<String, dynamic> json) =>
      _$SignUpFormFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpFormToJson(this);

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
