class AppConfig {
  factory AppConfig() => _instance;
  AppConfig._internal();

  static final AppConfig _instance = AppConfig._internal();

  EnvConfig envConfig;
}

abstract class EnvConfig {
  String env;
  bool displayEnv;
}
