import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';

import '../app_env.dart';

import '../logger/logger.dart';
import 'injector.dart';

@module
abstract class ConfigModule {
  @devEnv
  @Singleton()
  AppEnv get devEnvironment => AppEnv.dev();

  @prodEnv
  @Singleton()
  AppEnv get prodEnvironment => AppEnv.prod();

  @devEnv
  @Singleton()
  LogTree get devLogTree => Logger.debugTree;
}
