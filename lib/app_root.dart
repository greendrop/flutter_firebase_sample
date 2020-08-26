import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/pages/home_page.dart';
import 'package:flutter_firebase_sample/pages/sign_in_page.dart';
import 'package:flutter_firebase_sample/pages/sign_up_page.dart';
import 'package:flutter_firebase_sample/states/auth_state.dart';
import 'package:flutter_firebase_sample/states/sign_in_form_state.dart';
import 'package:flutter_firebase_sample/states/sign_up_form_state.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appConfig = AppConfig();
    if (!appConfig.envConfig.displayEnv) {
      return AppRootProvider();
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
          color: Colors.red,
          message: appConfig.envConfig.env.toUpperCase(),
          location: BannerLocation.topStart,
          child: AppRootProvider()),
    );
  }
}

class AppRootProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<AuthStateNotifier, AuthState>(
            create: (_) => AuthStateNotifier()),
        StateNotifierProvider<SignUpFormStateNotifier, SignUpFormState>(
            create: (_) => SignUpFormStateNotifier()),
        StateNotifierProvider<SignInFormStateNotifier, SignInFormState>(
            create: (_) => SignInFormStateNotifier()),
      ],
      child: AppRootMain(),
    );
  }
}

class AppRootMain extends StatefulWidget {
  @override
  _AppRootMainState createState() => _AppRootMainState();
}

class _AppRootMainState extends State<AppRootMain> {
  bool isInitialized = false;
  Timer refreshTokenTimer;

  @override
  void dispose() {
    super.dispose();
    refreshTokenTimer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    if (isInitialized == false) {
      setState(() {
        isInitialized = true;
      });
    }

    return MaterialApp(
        title: 'Flutter Firebase Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: HomePage.routeName,
        routes: <String, WidgetBuilder>{
          HomePage.routeName: (BuildContext context) => HomePage(),
          SignUpPage.routeName: (BuildContext context) => SignUpPage(),
          SignInPage.routeName: (BuildContext context) => SignInPage(),
        });
  }
}
