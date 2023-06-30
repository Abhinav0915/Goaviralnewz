import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/screens/dashboard.dart';
import 'package:goaviralnews/features/navigation/screens/photo_gallery.dart';
import 'package:goaviralnews/features/navigation/screens/search.dart';
import 'package:goaviralnews/features/navigation/screens/tripzie.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);
  static const String routName = "/routes";

  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State {
  int _selectedTab = 0;

  List _pages = [
    DashboardPage(),
    SearchPage(),
    PhotoGalleryScreen(),
    TripSectionPage(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Gallery"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Plan"),
        ],
      ),
    );
  }
}
