import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        scrolledUnderElevation: 5,
        surfaceTintColor: Colors.amber.shade300,
        shadowColor: Colors.black,
        backgroundColor: Colors.grey.shade700,
        title: const Text('Profile Options'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            LineIcons.angleLeft,
            // Icons.dangerous,
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(
        child: Text('just checkin'),
      ),
    );
  }
}
