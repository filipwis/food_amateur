// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fimber/fimber.dart' as _i5;
import 'package:food_amateur/core/app_env.dart' as _i3;
import 'package:food_amateur/core/di/config_module.dart' as _i6;
import 'package:food_amateur/presentation/style/app_theme_factory.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _dev = 'dev';
const String _prod = 'prod';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final configModule = _$ConfigModule();
  gh.singleton<_i3.AppEnv>(
    configModule.devEnvironment,
    registerFor: {_dev},
  );
  gh.singleton<_i3.AppEnv>(
    configModule.prodEnvironment,
    registerFor: {_prod},
  );
  gh.factory<_i4.AppThemeCubitFactory>(() => _i4.AppThemeCubitFactory());
  gh.singleton<_i5.LogTree>(
    configModule.devLogTree,
    registerFor: {_dev},
  );
  return getIt;
}

class _$ConfigModule extends _i6.ConfigModule {}
