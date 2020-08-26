import 'package:flutter/material.dart';

class AppConfig {
  factory AppConfig() => _instance;
  AppConfig._internal();

  static final AppConfig _instance = AppConfig._internal();

  Color toastBackgroundColor = Colors.black;
  Color toastTextColor = Colors.white;
  EnvConfig envConfig;
}

abstract class EnvConfig {
  String env;
  bool displayEnv;
}
