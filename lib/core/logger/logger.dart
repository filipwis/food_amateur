import 'package:fimber/fimber.dart';

import '../di/injector.dart';
import 'log_level.dart';

class Logger {
  static final Map<String, ColorizeStyle> _customColorizeMap = {
    LogLevel.info: ColorizeStyle([AnsiStyle.foreground(AnsiColor.cyan)]),
    LogLevel.verbose: ColorizeStyle([AnsiStyle.foreground(AnsiColor.blue)]),
    LogLevel.debug: ColorizeStyle([AnsiStyle.foreground(AnsiColor.white)]),
    LogLevel.warning: ColorizeStyle([AnsiStyle.foreground(AnsiColor.yellow)]),
    LogLevel.error: ColorizeStyle([AnsiStyle.foreground(AnsiColor.red)]),
  };

  static final DebugTree debugTree = DebugTree(
    useColors: true,
    logLevels: [
      LogLevel.info,
      LogLevel.debug,
      LogLevel.verbose,
      LogLevel.warning,
      LogLevel.error,
    ],
  );

  static void setup() {
    debugTree.colorizeMap = _customColorizeMap;

    Fimber.plantTree(getIt());
  }

  static void i(String message, {dynamic ex, StackTrace? st}) => Fimber.i(message, ex: ex, stacktrace: st);

  static void v(String message, {dynamic ex, StackTrace? st}) => Fimber.v(message, ex: ex, stacktrace: st);

  static void d(String message, {dynamic ex, StackTrace? st}) => Fimber.d(message, ex: ex, stacktrace: st);

  static void w(String message, {dynamic ex, StackTrace? st}) => Fimber.w(message, ex: ex, stacktrace: st);

  static void e(String message, {dynamic ex, StackTrace? st}) => Fimber.e(message, ex: ex, stacktrace: st);
}
