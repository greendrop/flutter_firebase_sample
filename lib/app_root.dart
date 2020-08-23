import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/pages/home_page.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appConfig = AppConfig();
    if (!appConfig.envConfig.displayEnv) {
      // return AppRootProvider();
      return AppRootMain();
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
          color: Colors.red,
          message: appConfig.envConfig.env.toUpperCase(),
          location: BannerLocation.topStart,
          // child: AppRootProvider()),
          child: AppRootMain()),
    );
  }
}

/*
class AppRootProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: AppRootMain(),
    );
  }
}
*/

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
        });
  }
}
