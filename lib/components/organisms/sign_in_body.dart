import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/atoms/center_circular_progress_indicator.dart';
import 'package:flutter_firebase_sample/components/molecules/sign_in_fields.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/models/sign_in_form.dart';
import 'package:flutter_firebase_sample/pages/home_page.dart';
import 'package:flutter_firebase_sample/states/auth_state.dart';
import 'package:flutter_firebase_sample/states/sign_in_form_state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class SignInBody extends StatefulWidget {
  @override
  _SignInBodyState createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final _appConfig = AppConfig();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final signInForm = context
        .select<SignInFormState, SignInForm>((state) => state.signInForm);

    final isFetching =
        context.select<AuthState, bool>((state) => state.isFetching);

    if (isFetching) {
      return CenterCircularProgressIndicator();
    }

    return Form(
        key: _formKey,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SignInFormFields(),
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
                                      .signInWithEmailAndPassword(
                                          signInForm.email,
                                          signInForm.password);

                                  if (authState.isError != null) {
                                    await Fluttertoast.showToast(
                                      msg: 'Signed in.',
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
                              child: const Text('SIGN IN'),
                            ))
                      ]))
                ])));
  }
}
