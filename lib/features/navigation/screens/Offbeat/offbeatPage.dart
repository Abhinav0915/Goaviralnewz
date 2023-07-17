import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class OffbeatPage extends StatefulWidget {
  const OffbeatPage({Key? key}) : super(key: key);

  static const String routName = "/offbeat-page";

  @override
  State<OffbeatPage> createState() => _OffbeatPageState();
}

class _OffbeatPageState extends State<OffbeatPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/offlogo.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Positioned(
                      top: height * 0.05,
                      left: width * 0.05,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(height: height * 0.05),
                        ],
                      ),
                    ),
                    Positioned(
                      top: height * 0.05,
                      right: width * 0.05,
                      child: IconButton(
                        icon: const Icon(CupertinoIcons.search,
                            color: Colors.black),
                        onPressed: () {
                          // Perform search functionality
                        },
                      ),
                    ),
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Switch It\nDown!',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              height: 1,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.25,
                          ),
                          Text(
                            'Enjoy the  vibe with these Off Beat places',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: height * 0.008),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Off.-.Beat",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 1,
                    color: const Color(0xFF0EE5B1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 94,
                            height: 112,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/off1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // const Positioned(
                          //   top: 8,
                          //   right: 8,
                          //   child: Icon(
                          //     Icons.favorite_border_outlined,
                          //     color: Colors.white,
                          //     size: 20,
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Go",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                          Text(
                            "Island Hopp...",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 94,
                            height: 112,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/off2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // const Positioned(
                          //   top: 8,
                          //   right: 8,
                          //   child: Icon(
                          //     Icons.favorite_border_outlined,
                          //     color: Colors.white,
                          //     size: 20,
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sail",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                          Text(
                            "Through T...",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 94,
                            height: 112,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/off3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // const Positioned(
                          //   top: 8,
                          //   right: 8,
                          //   child: Icon(
                          //     Icons.favorite_border_outlined,
                          //     color: Colors.white,
                          //     size: 20,
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dine ",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                          Text(
                            "On A Hous...",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 94,
                            height: 112,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/his4.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // const Positioned(
                          //   top: 8,
                          //   right: 8,
                          //   child: Icon(
                          //     Icons.favorite_border_outlined,
                          //     color: Colors.white,
                          //     size: 20,
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Beach",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                          Text(
                            "Evening Choice",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            const Divider(
              color: Color(0xFFF1F0F6),
              thickness: 16,
            ),
            SizedBox(
              height: height * 0.015,
            ),
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
                          CupertinoIcons.chevron_down,
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
                          "Calm",
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
                          "Thrilling Places",
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
              height: height * 0.03,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Best Of Low Key Vibes: ",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Stack(
                      children: [
                        Container(
                          width: 126,
                          height: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/off1.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 20,
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
                              const Text(
                                "Go Island Hopping",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.star_fill,
                                size: 14,
                                color: Colors.blue,
                              ),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "4.1(1K+)",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: width * 0.015),
                              Icon(CupertinoIcons.circle_filled,
                                  size: 5, color: Colors.grey),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "Rs 200/person",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              const Text(
                                "Island",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.005),
                          Row(
                            children: [
                              const Text(
                                "BagaCalangute",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: width * 0.015),
                              Icon(
                                CupertinoIcons.circle_filled,
                                size: 5,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "3.0 km",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Row(
                            children: [
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Stack(
                      children: [
                        Container(
                          width: 126,
                          height: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/off2.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 20,
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
                              const Text(
                                "Sail Through the Waters",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.star_fill,
                                size: 14,
                                color: Colors.blue,
                              ),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "4.1(1K+)",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: width * 0.015),
                              Icon(CupertinoIcons.circle_filled,
                                  size: 5, color: Colors.grey),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "Rs 200/person",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              const Text(
                                "Waves",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.005),
                          Row(
                            children: [
                              const Text(
                                "BagaCalangute",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: width * 0.015),
                              Icon(
                                CupertinoIcons.circle_filled,
                                size: 5,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "3.0 km",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Row(
                            children: [
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Stack(
                      children: [
                        Container(
                          width: 126,
                          height: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/off3.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 20,
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
                              const Text(
                                "Dine On A Boat House",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.star_fill,
                                size: 14,
                                color: Colors.blue,
                              ),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "4.1(1K+)",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: width * 0.015),
                              Icon(CupertinoIcons.circle_filled,
                                  size: 5, color: Colors.grey),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "Rs 200/person",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              const Text(
                                "Dinner",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.005),
                          Row(
                            children: [
                              const Text(
                                "BagaCalangute",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: width * 0.015),
                              Icon(
                                CupertinoIcons.circle_filled,
                                size: 5,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "3.0 km",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Row(
                            children: [
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Stack(
                      children: [
                        Container(
                          width: 126,
                          height: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/off4.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 20,
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
                              const Text(
                                "Mandream",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.star_fill,
                                size: 14,
                                color: Colors.blue,
                              ),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "4.1(1K+)",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: width * 0.015),
                              Icon(CupertinoIcons.circle_filled,
                                  size: 5, color: Colors.grey),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "Rs 200/person",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              const Text(
                                "Meditation",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.005),
                          Row(
                            children: [
                              const Text(
                                "BagaCalangute",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: width * 0.015),
                              Icon(
                                CupertinoIcons.circle_filled,
                                size: 5,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "3.0 km",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Row(
                            children: [
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Stack(
                      children: [
                        Container(
                          width: 126,
                          height: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/off5.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 20,
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
                              const Text(
                                "Sun set",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.star_fill,
                                size: 14,
                                color: Colors.blue,
                              ),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "4.1(1K+)",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: width * 0.015),
                              Icon(CupertinoIcons.circle_filled,
                                  size: 5, color: Colors.grey),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "Rs 200/person",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              const Text(
                                "Sune set",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.005),
                          Row(
                            children: [
                              const Text(
                                "BagaCalangute",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: width * 0.015),
                              Icon(
                                CupertinoIcons.circle_filled,
                                size: 5,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.015),
                              const Text(
                                "3.0 km",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Row(
                            children: [
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.2,
            ),
            Container(
              height: 355,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      "Its A\nVibe !",
                      style: GoogleFonts.poppins(
                        fontSize: 50,
                        color: Color(0xFF989595),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      "Until we meet again, GOA ",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color(0xFF989595),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
