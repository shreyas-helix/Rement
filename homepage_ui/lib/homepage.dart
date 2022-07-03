import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:homepage_ui/pages/Account.dart';
import 'package:homepage_ui/pages/Tag.dart';
import 'package:homepage_ui/pages/home.dart';
import 'package:homepage_ui/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBtmNavBar(int index){
    setState(() {
      _selectedIndex = index;
    }
    );
  }
  // different pages to navigate to
  final List<Widget> _children = [
    UsrHome(),
    UsrSearch(),
    UsrTag(),
    UsrAccount(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _navigateBtmNavBar,
      type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: 'Tag'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ],
      ),
    );
  }
}
