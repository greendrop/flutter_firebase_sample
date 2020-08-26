// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpForm _$SignUpFormFromJson(Map<String, dynamic> json) {
  return SignUpForm()
    ..email = json['email'] as String
    ..password = json['password'] as String;
}

Map<String, dynamic> _$SignUpFormToJson(SignUpForm instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
