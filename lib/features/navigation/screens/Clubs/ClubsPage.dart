import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/screens/Clubs/ClubDetailsPage.dart';
import 'package:goaviralnews/features/navigation/screens/photo_gallery.dart';
import 'package:goaviralnews/features/navigation/screens/search.dart';
import 'package:goaviralnews/features/navigation/screens/slider.dart';
import '../../../../globalVariables.dart';
import '../../../../size_config.dart';
import '../dashboard.dart';

class ClubsPage extends StatefulWidget {
  const ClubsPage({super.key});

  static const String routName = "/club-page";

  @override
  State<ClubsPage> createState() => _ClubsPageState();
}

class _ClubsPageState extends State<ClubsPage> {
  int _currentIndex = 0;
  bool isFavorite = false;

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
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.03,
            vertical: height * 0.025,
          ),
          child: Column(
            children: [
              //Search Container
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
              SizedBox(
                height: height * 0.035,
              ),
              //Top Trending
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
              SizedBox(
                height: height * 0.015,
              ),
              //Clubs
              SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 190,
                        width: 130,
                        padding: EdgeInsets.only(
                          left: width * 0.025,
                          top: height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/club1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.4),
                                                spreadRadius: 2,
                                                blurRadius: 4,
                                                offset: const Offset(0, 2),
                                              ),
                                            ],
                                            color: Colors.white,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "#mostvisited",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.045,
                                        ),
                                        const Icon(Icons.favorite,
                                            color: Colors.red),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "New",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Party",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Placeee",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Entry: INR 500",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.015,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      Container(
                        height: 190,
                        width: 130,
                        padding: EdgeInsets.only(
                          left: width * 0.025,
                          top: height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/club2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "#mostvisited",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // SizedBox(
                                        //   width: width * 0.045,
                                        // ),
                                        // const Icon(Icons.favorite,
                                        //     color: Colors.red),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Apna",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Fooding",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Adda",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Entry: INR 1,500",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.015,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.015,
                      ),
                      Container(
                        height: 190,
                        width: 130,
                        padding: EdgeInsets.only(
                          left: width * 0.025,
                          top: height * 0.01,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/club3.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "#mostvisited",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // SizedBox(
                                        //   width: width * 0.045,
                                        // ),
                                        // const Icon(Icons.favorite,
                                        //     color: Colors.red),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Best",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Beer",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Store",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          "Entry: Free",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.015,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              //Buttons
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
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Icon(
                                CupertinoIcons.slider_horizontal_3,
                                size: 18,
                                color: Colors.blue,
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
              SizedBox(
                height: height * 0.02,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "87 Clubs to Explore..",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Card(
                elevation: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Stack(
                        children: [
                          Container(
                            width: 90,
                            height: 145,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/card1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.only(top: 5, right: 5),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                  width: 40,
                                  padding: const EdgeInsets.only(left: 8),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        CupertinoIcons.circle_fill,
                                        color: Colors.black,
                                        size: 2,
                                      ),
                                      SizedBox(width: width * 0.01),
                                      const Text(
                                        "Live",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                '40%  off',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                borderRadius: BorderRadius.only(
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
                                    "Bang Bang Club",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.025,
                                ),
                                Row(
                                  children: [
                                    // const Text(
                                    //   "Visit Now",
                                    //   style: TextStyle(
                                    //     fontSize: 10,
                                    //     color: Colors.green,
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                    // SizedBox(width: width * 0.025),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      },
                                      child: Icon(
                                        size: 20,
                                        isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: isFavorite ? Colors.red : null,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    const Icon(
                                      CupertinoIcons.share,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    const Icon(
                                      CupertinoIcons.ellipsis_vertical,
                                      color: Colors.black,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Panaji, Goa . 12KM",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(
                              children: [
                                Image.asset("assets/icons/google.png",
                                    height: 14, width: 14),
                                SizedBox(width: width * 0.015),
                                const Text(
                                  "3.8",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: width * 0.04),
                                const Icon(
                                  CupertinoIcons.star_fill,
                                  size: 14,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: width * 0.015),
                                const Text(
                                  "4.1",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: width * 0.035),
                                const Icon(
                                  CupertinoIcons.ticket,
                                  color: Colors.blue,
                                  size: 15,
                                ),
                                SizedBox(width: width * 0.015),
                                const Text(
                                  "Free",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(children: [
                              Image.asset("assets/icons/calendar.png",
                                  height: 10, width: 10),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "Upcoming Event: 12 PM",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ]),
                            SizedBox(height: height * 0.005),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(
                                            255, 1, 36, 65),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Trance",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 40,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Image
                                      Image.asset(
                                        "assets/icons/g_location.png",
                                        height: 40,
                                        width: 30,
                                      ),
                                      // Text
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.006),
                                          Row(
                                            children: [
                                              const Icon(
                                                CupertinoIcons.eye_fill,
                                                size: 15,
                                              ),
                                              SizedBox(width: width * 0.015),
                                              const Text(
                                                "728",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: height * 0.002),
                                          const Text(
                                            "Visit Now",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color(0xFFFBBC05),
                                  ),
                                  child: const Center(
                                    child: Text("HappyHours",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.015,
                                ),
                                Container(
                                  height: 20,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color(0xFFFBBC05),
                                  ),
                                  child: const Center(
                                    child: Text("HappyHours",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
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
              SizedBox(
                height: height * 0.02,
              ),
              Card(
                elevation: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Stack(
                        children: [
                          Container(
                            width: 90,
                            height: 145,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/card2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Positioned(
                          //   bottom: 0,
                          //   right: 0,
                          //   child: Container(
                          //     padding: const EdgeInsets.all(2),
                          //     decoration: const BoxDecoration(
                          //       color: Colors.blue,
                          //       shape: BoxShape.circle,
                          //     ),
                          //     child: const Icon(
                          //       Icons.check,
                          //       color: Colors.white,
                          //       size: 16,
                          //     ),
                          //   ),
                          // ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                '#jungleparty',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                borderRadius: BorderRadius.only(
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
                                    "Club Titos",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.025,
                                ),
                                Row(
                                  children: [
                                    // const Text(
                                    //   "Visit Now",
                                    //   style: TextStyle(
                                    //     fontSize: 10,
                                    //     color: Colors.green,
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                    // SizedBox(width: width * 0.025),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      },
                                      child: Icon(
                                        size: 20,
                                        isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: isFavorite ? Colors.red : null,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    const Icon(
                                      CupertinoIcons.share,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    const Icon(
                                      CupertinoIcons.ellipsis_vertical,
                                      color: Colors.black,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Panaji, Goa . 12KM",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(
                              children: [
                                Image.asset("assets/icons/google.png",
                                    height: 14, width: 14),
                                SizedBox(width: width * 0.015),
                                const Text(
                                  "4.2",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: width * 0.04),
                                const Icon(
                                  CupertinoIcons.star_fill,
                                  size: 14,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: width * 0.015),
                                const Text(
                                  "2.1",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: width * 0.035),
                                const Icon(
                                  CupertinoIcons.ticket,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                SizedBox(width: width * 0.015),
                                const Text(
                                  "Restricted",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(children: [
                              Image.asset("assets/icons/calendar.png",
                                  height: 10, width: 10),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "not available",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ]),
                            SizedBox(height: height * 0.005),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color(0xFF850788),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Lo-Fi Music",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 40,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Image
                                      Image.asset(
                                        "assets/icons/g_location.png",
                                        height: 40,
                                        width: 30,
                                      ),
                                      // Text
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.006),
                                          Row(
                                            children: [
                                              const Icon(
                                                CupertinoIcons.eye_fill,
                                                size: 15,
                                              ),
                                              SizedBox(width: width * 0.015),
                                              const Text(
                                                "1,238",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: height * 0.002),
                                          const Text(
                                            "Visit Now",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black),
                                  child: const Center(
                                    child: Text("Crowded",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.015,
                                ),
                                Container(
                                  height: 20,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black,
                                  ),
                                  child: const Center(
                                    child: Text("Crowded",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
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
              SizedBox(
                height: height * 0.02,
              ),
              Card(
                elevation: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Stack(
                        children: [
                          Container(
                            width: 90,
                            height: 145,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/club3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Positioned(
                          //   bottom: 0,
                          //   right: 0,
                          //   child: Container(
                          //     padding: const EdgeInsets.all(2),
                          //     decoration: const BoxDecoration(
                          //       color: Colors.blue,
                          //       shape: BoxShape.circle,
                          //     ),
                          //     child: const Icon(
                          //       Icons.check,
                          //       color: Colors.white,
                          //       size: 16,
                          //     ),
                          //   ),
                          // ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                '#jungleparty',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                borderRadius: BorderRadius.only(
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
                                    "Silent Noice Club",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.025,
                                ),
                                Row(
                                  children: [
                                    // const Text(
                                    //   "Visit Now",
                                    //   style: TextStyle(
                                    //     fontSize: 10,
                                    //     color: Colors.green,
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                    // SizedBox(width: width * 0.025),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      },
                                      child: Icon(
                                        size: 20,
                                        isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: isFavorite ? Colors.red : null,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    const Icon(
                                      CupertinoIcons.share,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    const Icon(
                                      CupertinoIcons.ellipsis_vertical,
                                      color: Colors.black,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Panaji, Goa . 12KM",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(
                              children: [
                                Image.asset("assets/icons/google.png",
                                    height: 14, width: 14),
                                SizedBox(width: width * 0.015),
                                const Text(
                                  "4.2",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: width * 0.04),
                                const Icon(
                                  CupertinoIcons.star_fill,
                                  size: 14,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: width * 0.015),
                                const Text(
                                  "2.1",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: width * 0.035),
                                const Icon(
                                  CupertinoIcons.ticket,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                SizedBox(width: width * 0.015),
                                const Text(
                                  "Restricted",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(children: [
                              Image.asset("assets/icons/calendar.png",
                                  height: 10, width: 10),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "Upcoming Event : 12PM, Tonight",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ]),
                            SizedBox(height: height * 0.005),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color(0xFF419DDD),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Bollywood",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 40,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Image
                                      Image.asset(
                                        "assets/icons/g_location.png",
                                        height: 40,
                                        width: 30,
                                      ),
                                      // Text
                                      Column(
                                        children: [
                                          SizedBox(height: height * 0.006),
                                          Row(
                                            children: [
                                              const Icon(
                                                CupertinoIcons.eye_fill,
                                                size: 15,
                                              ),
                                              SizedBox(width: width * 0.015),
                                              const Text(
                                                "2,238",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: height * 0.002),
                                          const Text(
                                            "Visit Now",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color(0xFF20196F),
                                  ),
                                  child: const Center(
                                    child: Text("DJ Night",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.015,
                                ),
                                Container(
                                  height: 20,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color(0xFF20196F),
                                  ),
                                  child: const Center(
                                    child: Text("DJ Night",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
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
    );
  }
}
