import 'package:flutter/material.dart';

class SearchScreens extends StatelessWidget {
  const SearchScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchScreens'),
      ),
      body: Center(
        child: Text('Search Screens Content'),
      ),
    );
  }
}
