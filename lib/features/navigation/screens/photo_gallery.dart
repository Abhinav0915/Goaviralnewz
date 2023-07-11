import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/screens/dashboard.dart';
import 'package:goaviralnews/features/navigation/screens/search.dart';
import 'package:goaviralnews/features/navigation/screens/slider.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:goaviralnews/size_config.dart';

class PhotoGalleryScreen extends StatefulWidget {
  const PhotoGalleryScreen({Key? key}) : super(key: key);

  @override
  _PhotoGalleryScreenState createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  final List<String> imageList = [
    'assets/images/gallery1.png',
    'assets/images/gallery2.png',
    'assets/images/gallery3.jpg',
    'assets/images/gallery4.jpg',
    'assets/images/gallery5.jpg',
  ];

  final List<String> place = [
    'Waterfall',
    'Jetski',
    'Beaches',
    'Treking',
    'Wildlife',
  ];

  final List<String> location = [
    'Goa',
    'Goa',
    'Goa',
    'Goa',
    'Goa',
  ];

  final List<String> distance = [
    '2.8km',
    '3.5Km',
    '8.5Km',
    '4.2Km',
    '2.2KM',
  ];

  final List<String> hastags = [
    '#waterfall',
    '#thrilling',
    '#beach',
    '#mountain',
    '#wildlife',
  ];
  String selectedAvatar = "assets/icons/Group 42.png"; // Default avatar path

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    int _currentIndex = 2;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashboardPage()),
                  );
                },
                icon: const Icon(Icons.home),
                color: _currentIndex == 0 ? Colors.blue : Colors.grey,
                tooltip: "Home",
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                icon: const Icon(Icons.search),
                color: _currentIndex == 1 ? Colors.blue : Colors.grey,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhotoGalleryScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.bookmark),
                color: _currentIndex == 2 ? Colors.blue : Colors.grey,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SliderPage()),
                  );
                },
                icon: const Icon(Icons.person_2),
                color: _currentIndex == 3 ? Colors.blue : Colors.grey,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05,
                      vertical: height * 0.015,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const ImageIcon(
                                  AssetImage("assets/icons/instagram.png"),
                                  color: Colors.pink,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  "Follow us on Instagram",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                GestureDetector(
                                  child: Container(
                                    height: 18,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            const Text(
                              "Share your reels with us and attract Discount",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset("assets/icons/addstory.png",
                            width: 40, height: 40),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(
                              milliseconds:
                                  500), // Adjust the duration as needed
                          pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return const SliderPage(); // Replace with your destination page widget
                          },
                          transitionsBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation,
                              Widget child) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(1.0,
                                    0.0), // Start the page from the right side of the screen
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              const Text(
                "Let's Explore",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.003,
              ),
              const Text(
                "Hidden Gems ✈️",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue.shade100,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Beaches",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blue.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 36,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Adventure",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: GlobalVariables.extraFadedTextColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 36,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: GlobalVariables.extraFadedTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              CarouselSlider.builder(
                itemCount: imageList.length,
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 16 / 9,
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 4),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 16, top: 25),
                    width: 250,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(imageList[index]), // Image
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  location[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  distance[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Text(
                            hastags[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot Locations",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset("assets/images/dashboard.png"),
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset("assets/images/dashboard.png"),
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset("assets/images/dashboard.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
