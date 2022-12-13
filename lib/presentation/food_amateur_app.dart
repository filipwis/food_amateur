import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

import 'routing/main_router.dart';
import 'style/app_theme.dart';
import 'style/app_theme_factory.dart';

class FoodAmateurApp extends HookWidget {
  const FoodAmateurApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = useBlocFactory<AppThemeCubit, AppThemeCubitFactory>();
    final currentThemeState = useBlocBuilder<AppThemeCubit, AppTheme>(themeCubit);

    return MaterialApp.router(
      title: 'Food Amateur',
      routerConfig: mainRouter,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: currentThemeState.primaryColor,
          secondary: currentThemeState.accentColor,
        ),
        extensions: [currentThemeState],
      ),
    );
  }
}
