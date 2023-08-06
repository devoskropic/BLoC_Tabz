part of 'app_theme_cubit.dart';

// class AppThemeState {}

// abstract class AppThemeState extends Equatable {
//   final bool isDark;
//   const AppThemeState({required this.isDark});

//   @override
//   List<Object> get props => [isDark];
// }

// class AppThemeInitial extends AppThemeState {
//   const AppThemeInitial({required super.isDark});
// }

// class DarkTheme extends AppThemeState {
//   const DarkTheme({required super.isDark});
// }

// class LightTheme extends AppThemeState {
//   const LightTheme({required super.isDark});
// }

// class ToggleTheme extends AppThemeState {
//   const ToggleTheme({required super.isDark});
// }

abstract class AppThemeState {
  const AppThemeState();
}

class AppThemeInitial extends AppThemeState {
  bool? isDark;
  AppThemeInitial({this.isDark});
}

class DarkTheme extends AppThemeState {
  bool? isDark;
  DarkTheme({this.isDark});
}

class LightTheme extends AppThemeState {
  bool? isDark;
  LightTheme({this.isDark});
}

class ToggleTheme extends AppThemeState {
  bool? isDark;
  ToggleTheme({this.isDark});
}
