import 'package:flutter/material.dart';
import 'package:feh_bloc_tab/ui/views/home_pages/home_pages.dart';
import 'package:feh_bloc_tab/business_logic/business_logic_imports.dart';

class CustomScaffoldBody extends StatelessWidget {
  const CustomScaffoldBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewBloc, HomeViewState>(
      builder: (context, state) {
        if (state is InitialState) {
          return const HomePage();
        }
        if (state is IndexChangedState) {
          switch (state.index) {
            case 0:
              return const HomePage();
            case 1:
              return const FirstPage();
            case 2:
              return const SecondPage();
            case 3:
              return const ThirdPage();
            case 4:
              return const SettingsPage();
            default:
              return const Center(
                child: Text('Esto no debería pasar!'),
              );
          }
        }
        return const Center(
          child: Text('Hay fail'),
        );
      },
    );
  }
}
