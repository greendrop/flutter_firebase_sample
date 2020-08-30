import 'package:flutter/material.dart';

class AppConfig {
  factory AppConfig() => _instance;
  AppConfig._internal();

  static final AppConfig _instance = AppConfig._internal();
  final colors = AppConfigColors();
  final analytics = AppConfigAnalytics();
  EnvConfig envConfig;
}

class AppConfigColors {
  Color toastBackground = Colors.black;
  Color toastText = Colors.white;
}

class AppConfigAnalytics {
  final events = AppConfigAnalyticsEvents();
}

class AppConfigAnalyticsEvents {
  String signUp = 'sign_up';
  String signIn = 'sign_in';
  String signOut = 'sign_out';
}

abstract class EnvConfig {
  String env;
  bool displayEnv;
}
