import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/atoms/center_circular_progress_indicator.dart';
import 'package:flutter_firebase_sample/components/molecules/sign_up_fields.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/models/sign_up_form.dart';
import 'package:flutter_firebase_sample/pages/home_page.dart';
import 'package:flutter_firebase_sample/states/auth_state.dart';
import 'package:flutter_firebase_sample/states/sign_up_form_state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class SignUpBody extends StatefulWidget {
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final _appConfig = AppConfig();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final signUpForm = context
        .select<SignUpFormState, SignUpForm>((state) => state.signUpForm);

    final isUserCreating =
        context.select<AuthState, bool>((state) => state.isUserCreating);

    if (isUserCreating) {
      return CenterCircularProgressIndicator();
    }

    return Form(
        key: _formKey,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SignUpFormFields(),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: RaisedButton(
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  final authState = await context
                                      .read<AuthStateNotifier>()
                                      .createUserWithEmailAndPassword(
                                          signUpForm.email,
                                          signUpForm.password);

                                  if (authState.isError != null) {
                                    await Fluttertoast.showToast(
                                      msg: 'Signed up.',
                                      backgroundColor:
                                          _appConfig.toastBackgroundColor,
                                      textColor: _appConfig.toastTextColor,
                                    );
                                    await Navigator.of(context)
                                        .pushReplacementNamed(
                                            HomePage.routeName);
                                  } else {
                                    await Fluttertoast.showToast(
                                      msg: authState.errorMessage,
                                      backgroundColor:
                                          _appConfig.toastBackgroundColor,
                                      textColor: _appConfig.toastTextColor,
                                    );
                                  }
                                }
                              },
                              child: const Text('SIGN UP'),
                            ))
                      ]))
                ])));
  }
}
