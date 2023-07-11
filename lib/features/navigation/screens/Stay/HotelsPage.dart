import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/screens/Clubs/ClubDetailsPage.dart';
import 'package:goaviralnews/features/navigation/screens/Stay/HotelDetailsPage.dart';
import 'package:goaviralnews/features/navigation/screens/photo_gallery.dart';
import 'package:goaviralnews/features/navigation/screens/search.dart';
import 'package:goaviralnews/features/navigation/screens/slider.dart';

import '../../../../globalVariables.dart';
import '../../../../size_config.dart';
import '../dashboard.dart';

class HotelsPage extends StatefulWidget {
  const HotelsPage({super.key});

  static const String routName = "/hotels-page";

  @override
  State<HotelsPage> createState() => _HotelsPageState();
}

class _HotelsPageState extends State<HotelsPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.03,
              vertical: height * 0.025,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: GlobalVariables.backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400.withOpacity(0.7),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for your favourite place",
                      hintStyle: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.search,
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
                    ),
                  ),
                ),
                SizedBox(height: height * 0.035),
                const Row(
                  children: [
                    Text(
                      "Top Trending",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.015),
                SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.04,
                              vertical: height * 0.005,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/hotel1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Cliff",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      "Edge",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      "Calangute",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      "Price: INR 2,500/night",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.015,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Cliff Edge Calangute",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.star_circle,
                                    size: 13,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  const Text("4.7",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  const Text("*"),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  const Text("3 KM",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              const Text(
                                "#luxuriestay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 46, 46, 46),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.055,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.04,
                              vertical: height * 0.005,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/hotel2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Curvies",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      "Zululand",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      "Cottages",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      "Price: INR 2,500/night",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.015,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          const Text(
                            "Zululand Cottages",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.star_circle,
                                size: 13,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              const Text("4.8",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              const Text("*"),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              const Text("12 KM",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          const Text("#beachsideview",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 46, 46, 46),
                              )),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.055,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.04,
                              vertical: height * 0.005,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/hotel3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Hotel",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      "Inn",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      "Resort",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      "Price: 1800/night",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.015,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          const Text(
                            "Hammerzz Nightclub",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.star_circle,
                                size: 13,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              const Text("4.9",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              const Text("*"),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              const Text("12 KM",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          const Text("#beachresort",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 46, 46, 46),
                              )),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.055,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                SingleChildScrollView(
                  padding: EdgeInsets.only(left: width * 0.055),
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
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue,
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Icon(
                                  CupertinoIcons.slider_horizontal_3,
                                  size: 15,
                                  color: Color(0xFF137ABF),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            const Text(
                              "Filter",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade200,
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "Sort By",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade200,
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "Free Entry",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade200,
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "Non-Alcoholic",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "87 Accommodations to Explore..",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Card(
                  elevation: 6,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 10, top: 10),
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/accommodation1.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          isScrollControlled: true,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(20.0),
                                                topRight: Radius.circular(20.0),
                                              ),
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  color: Colors.transparent,
                                                ),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.75,
                                                child: const HotelDetailsPage(),
                                              ),
                                            );
                                          });
                                    },
                                    child: const Text(
                                      "Moustache Goa Luxuria",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: width * 0.025),
                                      const Text(
                                        "INR 2,500",
                                        style: TextStyle(
                                          color: Color(0xFF4C4DDC),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text(
                                        "/night",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.005),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(width: width * 0.01),
                                      const Text(
                                        "3.8",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: width * 0.1),
                                  Row(
                                    children: [
                                      const Icon(
                                        CupertinoIcons.star_circle,
                                        size: 15,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: width * 0.01),
                                      const Text("4.1",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.01),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Plot No 399/7N Zorin Village, Chapora Near St\nAnthony Hospital, Vagator, Anjuna, Goa 403509",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Card(
                  elevation: 6,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 10, top: 10),
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/accommodation2.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          isScrollControlled: true,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(20.0),
                                                topRight: Radius.circular(20.0),
                                              ),
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  color: Colors.transparent,
                                                ),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.75,
                                                child: const ClubDetailsPage(),
                                              ),
                                            );
                                          });
                                    },
                                    child: const Text(
                                      "Kama Royal Palms",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: width * 0.025),
                                      const Text(
                                        "INR 1,500",
                                        style: TextStyle(
                                          color: Color(0xFF4C4DDC),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text(
                                        "/night",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.005),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(width: width * 0.01),
                                      const Text(
                                        "3.8",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: width * 0.1),
                                  Row(
                                    children: [
                                      const Icon(
                                        CupertinoIcons.star_circle,
                                        size: 15,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: width * 0.01),
                                      const Text("4.1",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.01),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Colva - Benaulim Rd, Benaulim, Goa 403576",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
