import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/app_root.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/config/environments/local.dart';

Future<void> main() async {
  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  await runZoned(() async {
    // ignore: unused_local_variable
    final appConfig = AppConfig()..envConfig = EnvConfigLocal();
    // ignore: unused_local_variable
    final performance = FirebasePerformance.instance;

    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(AppRoot());
  }, onError: Crashlytics.instance.recordError);
}
