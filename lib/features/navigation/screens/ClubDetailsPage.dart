import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/screens/OverviewPage.dart';
import 'package:goaviralnews/features/navigation/screens/PhotoPage.dart';
import 'package:goaviralnews/features/navigation/screens/direction.dart';
import 'package:goaviralnews/features/navigation/screens/review.dart';

class ClubDetailsPage extends StatefulWidget {
  const ClubDetailsPage({Key? key});

  static const String routName = "/clubdetails-page";

  @override
  State<ClubDetailsPage> createState() => _ClubDetailsPageState();
}

class _ClubDetailsPageState extends State<ClubDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;
  final List<String> _tabTitles = ['Overview', 'Photo', 'Review', 'Direction'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tabTitles.length,
      vsync: this,
      initialIndex: _currentIndex,
    );
    _tabController.addListener(_onTabSelected);
  }

  void _onTabSelected() {
    setState(() {
      _currentIndex = _tabController.index;
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabSelected);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/detail.jpeg",
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: const Icon(CupertinoIcons.back,
                              color: Colors.black),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.favorite_border_outlined,
                              color: Colors.grey),
                          onPressed: () {
                            // Perform action on favorite icon press
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(
              // Set the desired colors for the TabBarTheme
              tabBarTheme: const TabBarTheme(
                labelColor: Colors.black, // Color of the selected tab label
                unselectedLabelColor:
                    Colors.black, // Color of the unselected tab labels
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              color: Colors.white, // Adjust the color as needed
              child: TabBar(
                controller: _tabController,
                tabs: List.generate(
                  _tabTitles.length,
                  (index) => Tab(text: _tabTitles[index]),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: TabBarView(
              controller: _tabController,
              children: const [
                OverviewPage(),
                PhotoPage(),
                ReviewPage(),
                DirectionPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
