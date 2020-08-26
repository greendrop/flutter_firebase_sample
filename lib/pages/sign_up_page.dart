import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/organisms/drawer_content.dart';
import 'package:flutter_firebase_sample/components/organisms/sign_up_body.dart';
import 'package:flutter_firebase_sample/states/sign_up_form_state.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  static String routeName = '/sign_up';
  final String title = 'Sign up';

  @override
  State<StatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isInitialized = false;

  @override
  Widget build(BuildContext context) {
    if (isInitialized == false) {
      Timer.run(() {
        context.read<SignUpFormStateNotifier>().clear();
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
        body: SignUpBody());
  }
}
