import 'package:flutter/material.dart';

class SettingsScreens extends StatelessWidget {
  const SettingsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Screens'),
      ),
      body: Center(
        child: Text('Settings Screens Content'),
      ),
    );
  }
}
