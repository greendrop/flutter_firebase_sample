import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/app_root.dart';
import 'package:flutter_firebase_sample/config/app_config.dart';
import 'package:flutter_firebase_sample/config/environments/prod.dart';

void main() {
  final _ = AppConfig()..envConfig = EnvConfigProd();
  runApp(AppRoot());
}
