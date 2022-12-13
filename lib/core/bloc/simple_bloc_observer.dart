import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logger/logger.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode) {
      Logger.i('SBO Log: ${bloc.runtimeType} has $change');
    }

    super.onChange(bloc, change);
  }

  @override
  void onError(
    BlocBase bloc,
    Object error,
    StackTrace stackTrace,
  ) {
    if (kDebugMode) {
      Logger.e('SBO Log: ${bloc.runtimeType} $error $stackTrace');
    }

    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    if (kDebugMode) {
      Logger.i('SBO Log: ${bloc.runtimeType} closed');
    }

    super.onClose(bloc);
  }

  @override
  void onCreate(BlocBase bloc) {
    if (kDebugMode) {
      Logger.i('SBO Log: ${bloc.runtimeType} created');
    }

    super.onCreate(bloc);
  }
}
