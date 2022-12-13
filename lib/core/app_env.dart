class AppEnv {
  const AppEnv._(this.env);

  factory AppEnv.prod() => const AppEnv._(prodEnvName);

  factory AppEnv.dev() => const AppEnv._(devEnvName);

  static const devEnvName = 'dev';
  static const prodEnvName = 'prod';

  final String env;
}
