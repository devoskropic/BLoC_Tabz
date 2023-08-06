import 'package:flutter/material.dart';
import 'route_names.dart';
import 'package:feh_bloc_tab/ui/views/views_imports.dart';
import 'package:feh_bloc_tab/business_logic/business_logic_imports.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initialRoute:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider<SplashScreenCubit>(
            create: (context) => SplashScreenCubit(),
            child: const SplashScreen(),
          );
        });
      case RouteNames.homeScreenRoute:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider<HomeViewBloc>(
            create: (context) => HomeViewBloc(),
            child: const HomeView(),
          );
        });
      case RouteNames.profileScreenRoute:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider<ProfileViewBloc>(
            create: (context) => ProfileViewBloc(),
            child: const ProfileView(),
          );
        });
      default:
        return null;
    }
  }
}
