import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:feh_bloc_tab/business_logic/business_logic_imports.dart';

class CustomGoogleNavBar extends StatelessWidget {
  // final int selectedIndex;
  const CustomGoogleNavBar({
    super.key,
    // required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Aquí
    final bttmNavBloc = context.read<HomeViewBloc>();
    return BlocBuilder<HomeViewBloc, HomeViewState>(
      builder: (context, state) {
        return GNav(
          selectedIndex: state.index,
          onTabChange: (value) {
            bttmNavBloc.add(PageTappedEvent(newIndex: value));
          },
          tabs: const [
            GButton(icon: LineIcons.home, text: 'Home'),
            GButton(icon: LineIcons.galacticEmpire, text: '1st'),
            GButton(icon: LineIcons.hackerNews, text: 'Second'),
            GButton(icon: LineIcons.kaggle, text: '3rd'),
            GButton(icon: LineIcons.cog, text: 'Settings'),
          ],
          gap: 3,
          color: Colors.grey[800],
          activeColor: Colors.blueAccent.shade700,
          padding: const EdgeInsets.all(12),
          backgroundColor: Colors.grey.shade300,
        );
      },
    );
  }
}
