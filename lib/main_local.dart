import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/app_root.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/config/environments/local.dart';

void main() {
  final _ = AppConfig()..envConfig = EnvConfigLocal();
  runApp(AppRoot());
}
