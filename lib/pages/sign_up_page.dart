import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
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

class _SignUpPageState extends State<SignUpPage> with RouteAware {
  final _routeObserver = RouteObserver<PageRoute>();
  final _analytics = FirebaseAnalytics();
  bool _isInitialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeObserver.subscribe(
        this, ModalRoute.of(context) as PageRoute<dynamic>);
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    _analytics.setCurrentScreen(
        screenName: ModalRoute.of(context).settings.name,
        screenClassOverride: widget.toString());
  }

  @override
  void didPopNext() {
    print('Sign Up didPopNext');
    _analytics.setCurrentScreen(
        screenName: ModalRoute.of(context).settings.name,
        screenClassOverride: widget.toString());
  }

  @override
  Widget build(BuildContext context) {
    if (_isInitialized == false) {
      Timer.run(() {
        context.read<SignUpFormStateNotifier>().clear();
        setState(() {
          _isInitialized = true;
        });
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: DrawerContent(),
        body: _isInitialized ? SignUpBody() : Container());
  }
}
