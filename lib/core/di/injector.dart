import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import './injector.config.dart';
import '../app_env.dart';

final getIt = GetIt.instance;

const devEnv = Environment(AppEnv.devEnvName);
const prodEnv = Environment(AppEnv.prodEnvName);

@InjectableInit(asExtension: false)
Future<void> setupDI(String env) async {
  init(getIt, environment: env);
}
