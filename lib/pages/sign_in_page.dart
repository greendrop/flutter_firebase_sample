import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/organisms/drawer_content.dart';
import 'package:flutter_firebase_sample/components/organisms/sign_in_body.dart';
import 'package:flutter_firebase_sample/states/sign_in_form_state.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  static String routeName = '/sign_in';
  final String title = 'Sign in';

  @override
  State<StatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isInitialized = false;

  @override
  Widget build(BuildContext context) {
    if (isInitialized == false) {
      Timer.run(() {
        context.read<SignInFormStateNotifier>().clear();
        setState(() {
          isInitialized = true;
        });
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: DrawerContent(),
        body: SignInBody());
  }
}
