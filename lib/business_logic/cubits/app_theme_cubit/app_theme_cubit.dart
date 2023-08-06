import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeInitial());

  // void onInit() {
  //   // check local storage (flag pa saber si es dark o no)
  //   emit(ToggleTheme(isDark: false));
  // }

  Future<void> onInit() async {
    // check local storage (flag pa saber si es dark o no)
    emit(ToggleTheme(isDark: false));
  }
}
