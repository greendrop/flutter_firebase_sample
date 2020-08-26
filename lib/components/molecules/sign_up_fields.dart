import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/models/sign_up_form.dart';
import 'package:flutter_firebase_sample/states/sign_up_form_state.dart';
import 'package:provider/provider.dart';

class SignUpFormFields extends StatefulWidget {
  @override
  _SignUpFormFieldsState createState() => _SignUpFormFieldsState();
}

class _SignUpFormFieldsState extends State<SignUpFormFields> {
  bool isInitialized = false;
  final _emailTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
  }

  void _handleEmail() {
    context
        .read<SignUpFormStateNotifier>()
        .handleEmail(_emailTextEditingController.text);
  }

  void _handlePassword() {
    context
        .read<SignUpFormStateNotifier>()
        .handlePassword(_passwordTextEditingController.text);
  }

  @override
  Widget build(BuildContext context) {
    final signUpForm = context.select<SignUpFormState, SignUpForm>(
        (state) => state.signUpForm ?? SignUpForm());

    if (isInitialized == false) {
      Timer.run(() {
        _emailTextEditingController.text = signUpForm.email ?? '';
        _passwordTextEditingController.text = signUpForm.password ?? '';
        _emailTextEditingController.addListener(_handleEmail);
        _passwordTextEditingController.addListener(_handlePassword);
        setState(() {
          isInitialized = true;
        });
      });

      return Container();
    }

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
              controller: _emailTextEditingController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              validator: SignUpForm.emailValidator),
          TextFormField(
            controller: _passwordTextEditingController,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
            validator: SignUpForm.passwordValidator,
            obscureText: true,
          ),
        ]);
  }
}
