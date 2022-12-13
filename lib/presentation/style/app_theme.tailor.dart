// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_theme.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    required this.primaryColor,
    required this.accentColor,
    required this.orange,
    required this.black,
    required this.white,
    required this.gray,
    required this.h1,
    required this.h2,
    required this.b1,
    required this.b2,
    required this.b3,
    required this.b4,
    required this.b5,
  });

  final Color primaryColor;
  final Color accentColor;
  final Color orange;
  final Color black;
  final Color white;
  final Color gray;
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle b1;
  final TextStyle b2;
  final TextStyle b3;
  final TextStyle b4;
  final TextStyle b5;

  static final AppTheme lightTheme = AppTheme(
    primaryColor: _$AppTheme.primaryColor[0],
    accentColor: _$AppTheme.accentColor[0],
    orange: _$AppTheme.orange[0],
    black: _$AppTheme.black[0],
    white: _$AppTheme.white[0],
    gray: _$AppTheme.gray[0],
    h1: _$AppTheme.h1[0],
    h2: _$AppTheme.h2[0],
    b1: _$AppTheme.b1[0],
    b2: _$AppTheme.b2[0],
    b3: _$AppTheme.b3[0],
    b4: _$AppTheme.b4[0],
    b5: _$AppTheme.b5[0],
  );

  static final themes = [
    lightTheme,
  ];

  @override
  AppTheme copyWith({
    Color? primaryColor,
    Color? accentColor,
    Color? orange,
    Color? black,
    Color? white,
    Color? gray,
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? b1,
    TextStyle? b2,
    TextStyle? b3,
    TextStyle? b4,
    TextStyle? b5,
  }) {
    return AppTheme(
      primaryColor: primaryColor ?? this.primaryColor,
      accentColor: accentColor ?? this.accentColor,
      orange: orange ?? this.orange,
      black: black ?? this.black,
      white: white ?? this.white,
      gray: gray ?? this.gray,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      b1: b1 ?? this.b1,
      b2: b2 ?? this.b2,
      b3: b3 ?? this.b3,
      b4: b4 ?? this.b4,
      b5: b5 ?? this.b5,
    );
  }

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this;
    return AppTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      accentColor: Color.lerp(accentColor, other.accentColor, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      black: Color.lerp(black, other.black, t)!,
      white: Color.lerp(white, other.white, t)!,
      gray: Color.lerp(gray, other.gray, t)!,
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      b1: TextStyle.lerp(b1, other.b1, t)!,
      b2: TextStyle.lerp(b2, other.b2, t)!,
      b3: TextStyle.lerp(b3, other.b3, t)!,
      b4: TextStyle.lerp(b4, other.b4, t)!,
      b5: TextStyle.lerp(b5, other.b5, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTheme &&
            const DeepCollectionEquality()
                .equals(primaryColor, other.primaryColor) &&
            const DeepCollectionEquality()
                .equals(accentColor, other.accentColor) &&
            const DeepCollectionEquality().equals(orange, other.orange) &&
            const DeepCollectionEquality().equals(black, other.black) &&
            const DeepCollectionEquality().equals(white, other.white) &&
            const DeepCollectionEquality().equals(gray, other.gray) &&
            const DeepCollectionEquality().equals(h1, other.h1) &&
            const DeepCollectionEquality().equals(h2, other.h2) &&
            const DeepCollectionEquality().equals(b1, other.b1) &&
            const DeepCollectionEquality().equals(b2, other.b2) &&
            const DeepCollectionEquality().equals(b3, other.b3) &&
            const DeepCollectionEquality().equals(b4, other.b4) &&
            const DeepCollectionEquality().equals(b5, other.b5));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(primaryColor),
        const DeepCollectionEquality().hash(accentColor),
        const DeepCollectionEquality().hash(orange),
        const DeepCollectionEquality().hash(black),
        const DeepCollectionEquality().hash(white),
        const DeepCollectionEquality().hash(gray),
        const DeepCollectionEquality().hash(h1),
        const DeepCollectionEquality().hash(h2),
        const DeepCollectionEquality().hash(b1),
        const DeepCollectionEquality().hash(b2),
        const DeepCollectionEquality().hash(b3),
        const DeepCollectionEquality().hash(b4),
        const DeepCollectionEquality().hash(b5));
  }
}

extension AppThemeBuildContextProps on BuildContext {
  AppTheme get _appTheme => Theme.of(this).extension<AppTheme>()!;
  Color get primaryColor => _appTheme.primaryColor;
  Color get accentColor => _appTheme.accentColor;
  Color get orange => _appTheme.orange;
  Color get black => _appTheme.black;
  Color get white => _appTheme.white;
  Color get gray => _appTheme.gray;
  TextStyle get h1 => _appTheme.h1;
  TextStyle get h2 => _appTheme.h2;
  TextStyle get b1 => _appTheme.b1;
  TextStyle get b2 => _appTheme.b2;
  TextStyle get b3 => _appTheme.b3;
  TextStyle get b4 => _appTheme.b4;
  TextStyle get b5 => _appTheme.b5;
}
