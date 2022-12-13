import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import 'app_colors.dart';
import 'app_typography.dart';

part 'app_theme.tailor.dart';

@Tailor(themes: ['lightTheme'])
class _$AppTheme {
  static List<Color> primaryColor = [AppColors.primaryColor];
  static List<Color> accentColor = [AppColors.alternativeColor];
  static List<Color> orange = [AppColors.appOrange];
  static List<Color> black = [AppColors.black];
  static List<Color> white = [AppColors.white];
  static List<Color> gray = [AppColors.gray];

  static List<TextStyle> h1 = [AppTypography.h1];
  static List<TextStyle> h2 = [AppTypography.h2.copyWith(color: AppColors.appOrange)];
  static List<TextStyle> b1 = [AppTypography.b1];
  static List<TextStyle> b2 = [AppTypography.b2];
  static List<TextStyle> b3 = [AppTypography.b3];
  static List<TextStyle> b4 = [AppTypography.b4];
  static List<TextStyle> b5 = [AppTypography.b5];
}
