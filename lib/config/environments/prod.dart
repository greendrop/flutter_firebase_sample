import 'package:flutter_firebase_sample/config/app_config.dart';

class EnvConfigProd implements EnvConfig {
  @override
  String env = 'prod';
  @override
  bool displayEnv = true;
}
