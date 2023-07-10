import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/screens/dashboard.dart';
import 'package:goaviralnews/features/navigation/screens/photo_gallery.dart';
import 'package:goaviralnews/features/navigation/screens/search.dart';
import 'package:goaviralnews/features/navigation/screens/slider.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late NotchBottomBarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = NotchBottomBarController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _navigateToScreen(path) {
    // Navigate to the screen based on the selected path
    switch (path) {
      case '/dashboard-page':
        // Navigate to the Home screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DashboardPage()),
        );
        break;
      case '/search-page':
        // Navigate to the Search screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  SearchPage()),
        );
        break;
      case '/bookmarked':

        // Navigate to the Bookmarked screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PhotoGalleryScreen()),
        );
        break;
      case '/profile':
        // Navigate to the Profile screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SliderPage()),
        );
        break;
      // Add more cases for additional paths/screens
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Colors.blueAccent,
            ),
            itemLabel: "Home",
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.star,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.star,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Search',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.bookmark,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.bookmark,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Bookmarked',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.person,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.person,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
          });
          _navigateToScreen((index).toString());
        },
      ),
    );
  }
}
