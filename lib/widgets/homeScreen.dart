import 'package:flutter/material.dart';

class homeScreens extends StatelessWidget {
  const homeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Home Screen Content'),
      ),
    );
  }
}
