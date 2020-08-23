import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/pages/home_page.dart';

class DrawerContent extends StatelessWidget {
  final _appConfig = AppConfig();

  @override
  Widget build(BuildContext context) {
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

    return Drawer(
      child: ListView(
        children: children,
      ),
    );
  }
}
