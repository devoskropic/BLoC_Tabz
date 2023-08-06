import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final Function()? onPressed;
  const CustomAppBar({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      scrolledUnderElevation: 7,
      surfaceTintColor: backgroundColor,
      shadowColor: Colors.black,
      title: Text(title),
      centerTitle: true,
      backgroundColor: backgroundColor,
      titleTextStyle: TextStyle(
        fontSize: 18,
        color: textColor,
        fontWeight: FontWeight.w600,
      ),
      // leading: IconButton(
      //   onPressed: () {},
      //   icon: const Icon(LineIcons.arrowLeft),
      // ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: onPressed,
                color: textColor,
                // icon: const Icon(LineIcons.verticalEllipsis),
                icon: const Icon(LineIcons.userCircle),
                // tooltip: "Mi Perfil",
                constraints: const BoxConstraints(
                  minHeight: 20.0,
                  minWidth: 25.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
