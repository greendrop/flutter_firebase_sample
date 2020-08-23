import 'package:flutter_firebase_sample/config/app_config.dart';

class EnvConfigLocal implements EnvConfig {
  @override
  String env = 'local';
  @override
  bool displayEnv = true;
}
