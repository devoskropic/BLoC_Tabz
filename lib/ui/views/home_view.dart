import 'package:flutter/material.dart';
import 'package:feh_bloc_tab/ui/routes/route_names.dart';
import 'package:feh_bloc_tab/ui/widgets/widgets_imports.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52.0),
        child: CustomAppBar(
          title: 'BLoC Tabz',
          backgroundColor: Colors.brown.shade200,
          textColor: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.profileScreenRoute);
          },
        ),
      ),
      body: const CustomScaffoldBody(),
      bottomNavigationBar: const CustomGoogleNavBar(),
    );
  }
}
