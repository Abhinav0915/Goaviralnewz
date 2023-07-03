import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

import 'package:goaviralnews/features/navigation/screens/photo_gallery.dart';
import 'package:goaviralnews/features/navigation/screens/search.dart';
import 'package:goaviralnews/features/navigation/screens/slider.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../size_config.dart';
import '../widgets/trending.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  static const String routName = "/dashboard-page";

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String selectedAvatar = "assets/icons/addstory.png";
  int _currentIndex = 0;

// Default avatar path

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black, // Set your desired color for the status bar
    ));

    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      // bottomNavigationBar: CustomBottomNavigationBar(),

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
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
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
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  // SizedBox(
                  //   width: width * 0.025,
                  // ),
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
                                    fontSize: 12,
                                    fontFamily: 'ComicSans',
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
                                fontFamily: 'ComicSans',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
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
                            spreadRadius: 2,
                            blurRadius: 5,
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
                      Navigator.pushNamed(
                        context,
                        "/slider-page",
                      );
                    },
                  )
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.all(1),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Wrap(
                  spacing: width * 0.05,
                  children: const [
                    Trending(
                      name: "Trending",
                      iconData: Icons.favorite,
                      imageData: "assets/images/logo.png",
                      width: 10,
                      gap: 0,
                    ),
                    Trending(
                      name: "Trending",
                      iconData: Icons.favorite,
                      imageData: "assets/images/beaches.jpg",
                      width: 10,
                      gap: 10,
                    ),
                    Trending(
                      name: "Trending",
                      iconData: Icons.favorite,
                      imageData: "assets/images/hotelsss.jpg",
                      width: 10,
                      gap: 0,
                    ),
                    Trending(
                      name: "Trending",
                      iconData: Icons.favorite,
                      imageData: "assets/images/calm.jpg",
                      width: 10,
                      gap: 10,
                    ),
                    Trending(
                      name: "Beach",
                      iconData: Icons.favorite,
                      imageData: "assets/images/sunsett.jpg",
                      width: 10,
                      gap: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(15, 5, 10, 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade200,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            "/customtrip-page",
                          );
                        },
                        child: const Expanded(
                          child: Text(
                            "Get your personalised trip plan",
                            style: TextStyle(
                              fontFamily: 'ComicSans',
                              overflow: TextOverflow.ellipsis,
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            CupertinoIcons.search,
                            color: Colors.grey,
                          ),
                          Container(
                            width: 1,
                            height: 24,
                            color: Colors.grey,
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                          ),
                          const Icon(
                            Icons.mic,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.only(left: 5),
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade200,
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.grey.withOpacity(0.3),
                                //     spreadRadius: 1,
                                //     blurRadius: 2,
                                //     offset: const Offset(0, 1),
                                //   ),
                                // ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: PhysicalModel(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.transparent,
                                  shadowColor: Colors.black,
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    child: GestureDetector(
                                      onTap: () {
                                        // Navigator.pushNamed(
                                        //   context,
                                        //   "/customtrip-page",
                                        // );
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          "assets/images/2.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text("Goa Tour",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  "/club-page",
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade200,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey.withOpacity(0.3),
                                  //     spreadRadius: 2,
                                  //     blurRadius: 5,
                                  //     offset: const Offset(0, 8),
                                  //   ),
                                  // ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: PhysicalModel(
                                    color: Colors.grey.shade200,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      child: Image.asset(
                                        "assets/images/6.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text("Clubs",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade200,
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.grey.withOpacity(0.3),
                                //     spreadRadius: 2,
                                //     blurRadius: 5,
                                //     offset: const Offset(0, 8),
                                //   ),
                                // ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: PhysicalModel(
                                  color: Colors.grey.shade200,
                                  elevation: 10,
                                  shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    child: Image.asset(
                                      "assets/images/3.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text("Stay",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade200,
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.grey.withOpacity(0.3),
                                //     spreadRadius: 2,
                                //     blurRadius: 5,
                                //     offset: const Offset(0, 8),
                                //   ),
                                // ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: PhysicalModel(
                                  color: Colors.grey.shade200,
                                  elevation: 10,
                                  shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    child: Image.asset(
                                      "assets/images/5.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text("Food",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade200,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey.withOpacity(0.3),
                                  //     spreadRadius: 2,
                                  //     blurRadius: 5,
                                  //     offset: const Offset(0, 8),
                                  //   ),
                                  // ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: PhysicalModel(
                                    color: Colors.grey.shade200,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      child: Image.asset(
                                        "assets/images/4.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text("Offbeat",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade200,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey.withOpacity(0.3),
                                  //     spreadRadius: 2,
                                  //     blurRadius: 5,
                                  //     offset: const Offset(0, 8),
                                  //   ),
                                  // ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: PhysicalModel(
                                    color: Colors.grey.shade200,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      child: Image.asset(
                                        "assets/images/7.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text("Events",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade200,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey.withOpacity(0.3),
                                  //     spreadRadius: 2,
                                  //     blurRadius: 5,
                                  //     offset: const Offset(0, 8),
                                  //   ),
                                  // ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: PhysicalModel(
                                    color: Colors.grey.shade200,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      child: Image.asset(
                                        "assets/images/9.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text("Historical",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade200,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey.withOpacity(0.3),
                                  //     spreadRadius: 2,
                                  //     blurRadius: 5,
                                  //     offset: const Offset(0, 8),
                                  //   ),
                                  // ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: PhysicalModel(
                                    color: Colors.grey.shade200,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      child: Image.asset(
                                        "assets/images/8.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text("Adventure",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                height: 70,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFFE8ECF4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SURPRISE!",
                          style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'ComicSans',
                            color: Color.fromARGB(255, 13, 128, 223),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Open your gift now!",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'ComicSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: width * 0.05),
                      child: Transform.scale(
                        scale: 6, // Adjust the scale factor as desired
                        child: Image.asset(
                          "assets/images/gift.png",
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              const Row(
                children: [
                  Text("Hot Locations 🔥",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'ComicSans',
                      )),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 210,
                        width: 180,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.025,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                            image: AssetImage("assets/images/liveevents.png"),
                            fit: BoxFit.cover,
                          ),
                          color: const Color(0xFF6CD3FF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text("Parties",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            const Row(
                              children: [
                                Text("Live \nEvents",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            const Row(
                              children: [
                                Text("#trending",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 12,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 100,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "Visit Place",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'ComicSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Container(
                        height: 210,
                        width: 180,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.025,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                            image: AssetImage("assets/images/sunrise.png"),
                            fit: BoxFit.cover,
                          ),
                          color: const Color(0xFF6CD3FF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text("SUNRISE",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            const Row(
                              children: [
                                Text("Best \nChoice",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            const Row(
                              children: [
                                Text("#morningmood",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 12,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 100,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "Visit Place",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'ComicSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Container(
                        height: 210,
                        width: 180,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.025,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                            image: AssetImage("assets/images/evening.png"),
                            fit: BoxFit.cover,
                          ),
                          color: const Color(0xFF6CD3FF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text("EVENING",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            const Row(
                              children: [
                                Text("Best \nChoice",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            const Row(
                              children: [
                                Text("#walkingtime",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 12,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 100,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "Visit Place",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'ComicSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                    SizedBox(
                      width: width * 0.05,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text("Check out some amazing services",
                    style: TextStyle(
                      fontFamily: 'ComicSans',
                      fontSize: 12,
                    )),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 160,
                      width: 350,
                      padding: const EdgeInsets.only(left: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.orange,
                            Colors.black,
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "GET ",
                                  style: TextStyle(
                                    fontFamily: 'ComicSans',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  "50% OFF",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'ComicSans',
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                const Text(
                                  "On Drink's specials",
                                  style: TextStyle(
                                    fontFamily: 'ComicSans',
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "from",
                                        style: TextStyle(
                                          fontFamily: 'ComicSans',
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        "Tito's Bar and Club",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ]),
                                SizedBox(
                                  height: height * 0.0002,
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/images/beer.png', // Replace with the actual path to your image
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Container(
                      height: 160,
                      width: 350,
                      padding: const EdgeInsets.only(left: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF00704A),
                            Color(0xFF005540),
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "GET ",
                                  style: TextStyle(
                                    fontFamily: 'ComicSans',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  "50% OFF",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'ComicSans',
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                const Text(
                                  "On breakfast specials",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'ComicSans',
                                    color: Colors.white,
                                  ),
                                ),
                                Row(children: [
                                  const Text(
                                    "from",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontFamily: 'ComicSans',
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  const Text(
                                    "Starbucks",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                      fontFamily: 'ComicSans',
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: height * 0.0002,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: width * 0.05),
                            child: Image.asset(
                              'assets/images/starbucks.png', // Replace with the actual path to your image
                              width: 110,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/hotelsss.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.red,
                                size: 28,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Curlies ZuluLand Cottages",
                                style: TextStyle(
                                  fontFamily: 'ComicSans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.star, color: Colors.yellow),
                                  SizedBox(width: width * 0.01),
                                  const Text(
                                    "4.8",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Text(
                            "Monterio Vaddo, Anjuna, Goa 403509",
                            style: TextStyle(
                              fontFamily: 'ComicSans',
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "₹1,200",
                                style: TextStyle(
                                  fontFamily: 'ComicSans',
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "/night",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'ComicSans',
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
