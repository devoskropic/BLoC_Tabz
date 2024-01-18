import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:feh_bloc_tab/ui/routes/route_generator.dart';
import 'package:feh_bloc_tab/business_logic/business_logic_imports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // [ BlocProvider( create: (context) => SubjectBloc(),),],
      providers: MultiBlocProviderList.providerz(),
      child: BlocBuilder<AppThemeCubit, AppThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Material App',
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.generateRoute,
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  // textScaleFactor: 1.0,
                  textScaler: const TextScaler.linear(1.0),
                ),
                child: child!,
              );
            },
            theme: ThemeData.light(),
            // theme: ThemeData(
            //   primarySwatch: Colors.grey,
            //   colorSchemeSeed: Colors.grey,
            //   textTheme: GoogleFonts.robotoTextTheme(),
            //   useMaterial3: true,
            // ),
          );
        },
      ),
    );
  }
}
