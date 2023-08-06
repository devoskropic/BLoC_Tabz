import 'package:flutter/material.dart';
import 'package:feh_bloc_tab/business_logic/business_logic_imports.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewBloc, HomeViewState>(
      builder: (context, state) {
        if (state is IndexChangedState) {
          return Center(
            child: Text('${state.note} ${state.index}'),
          );
        }
        return const Center(
          child: Text('Esto no debería pasar!'),
        );
      },
    );
  }
}
