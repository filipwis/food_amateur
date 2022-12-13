import 'package:bloc/bloc.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:injectable/injectable.dart';

import 'app_theme.dart';

class AppThemeCubit extends Cubit<AppTheme> {
  AppThemeCubit(super.initialState);
}

@injectable
class AppThemeCubitFactory extends BlocFactory<AppThemeCubit> {
  @override
  AppThemeCubit create() {
    final AppTheme appTheme = AppTheme.lightTheme;

    return AppThemeCubit(appTheme);
  }
}
