import 'package:feh_bloc_tab/ui/views/views_imports.dart';
import 'package:feh_bloc_tab/business_logic/business_logic_imports.dart';

class MultiBlocProviderList {
  static List<BlocProvider> providerz() {
    return <BlocProvider>[
      BlocProvider<AppThemeCubit>(
        create: (_) => AppThemeCubit()..onInit(),
      ),
      BlocProvider<HomeViewBloc>(
        create: (_) => HomeViewBloc(),
        child: const HomeView(),
      ),
      BlocProvider<ProfileViewBloc>(
        create: (_) => ProfileViewBloc(),
        child: const ProfileView(),
      )
    ];
  }
}
