import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

import 'core/di/injector.dart';
import 'core/logger/logger.dart';
import 'presentation/food_amateur_app.dart';

Future<void> runMain(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await EasyLocalization.ensureInitialized();

  await setupDI(env);

  runZonedGuarded(
    () async {
      runApp(
        EasyLocalization(
          supportedLocales: const [
            Locale('en'),
          ],
          path: 'assets/translations',
          fallbackLocale: const Locale('en'),
          useFallbackTranslations: true,
          child: HookedBlocConfigProvider(
            injector: () => getIt.get,
            child: const FoodAmateurApp(),
          ),
        ),
      );
    },
    (e, s) => Logger.e(
      'Application error',
      ex: e,
    ),
  );
}
