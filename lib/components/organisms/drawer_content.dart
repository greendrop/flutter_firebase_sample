import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/pages/home_page.dart';
import 'package:flutter_firebase_sample/pages/sign_in_page.dart';
import 'package:flutter_firebase_sample/pages/sign_up_page.dart';
import 'package:flutter_firebase_sample/states/auth_state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class DrawerContent extends StatelessWidget {
  final _appConfig = AppConfig();
  final _analytics = FirebaseAnalytics();

  @override
  Widget build(BuildContext context) {
    final user = context.select<AuthState, User>((state) => state.user);
    final children = <Widget>[
      const DrawerHeader(
        child: Center(
          child: Text(
            'Flutter Firebase Sample',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      ListTile(
        title: const Text('Home'),
        onTap: () {
          Navigator.of(context).pushReplacementNamed(HomePage.routeName);
        },
      ),
    ];
    if (user != null) {
      children.addAll([
        ListTile(
          title: const Text('Sign out'),
          onTap: () async {
            context.read<AuthStateNotifier>().setUser(null);
            await FirebaseAuth.instance.signOut();
            await _analytics.logEvent(
                name: _appConfig.analytics.events.signOut,
                parameters: <String, dynamic>{'id': user.uid});
            await _analytics.setUserId(null);
            await Fluttertoast.showToast(
              msg: 'Signed out.',
              backgroundColor: _appConfig.colors.toastBackground,
              textColor: _appConfig.colors.toastText,
            );
            await Navigator.of(context)
                .pushReplacementNamed(HomePage.routeName);
          },
        ),
      ]);
    } else {
      children.addAll([
        ListTile(
          title: const Text('Sign in'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(SignInPage.routeName);
          },
        ),
        ListTile(
          title: const Text('Sign up'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(SignUpPage.routeName);
          },
        ),
      ]);
    }

    return Drawer(
      child: ListView(
        children: children,
      ),
    );
  }
}
