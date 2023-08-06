class RouteNames {
  RouteNames._internalConstructor();
  static final RouteNames _instance = RouteNames._internalConstructor();

  // static const String initialRoute = "/Splash_Screen";
  static const String initialRoute = "/";
  static const String homeScreenRoute = "/Home_View";
  static const String profileScreenRoute = "/Profile_Screen";

  factory RouteNames() {
    return _instance;
  }
}
