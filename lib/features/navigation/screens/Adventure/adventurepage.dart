import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class AdventurePage extends StatefulWidget {
  const AdventurePage({Key? key}) : super(key: key);

  static const String routName = "/adventure-page";

  @override
  State<AdventurePage> createState() => _AdventurePageState();
}

class _AdventurePageState extends State<AdventurePage> {
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
              height: 332,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/adventureMain.png"),
                  fit: BoxFit.cover,
                ),
              ),
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
                        Text(
                          'Lets',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Have',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Some',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          'Fun',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: height * 0.05,
                    right: width * 0.05,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: const Icon(CupertinoIcons.search,
                            color: Colors.black),
                        onPressed: () {
                          // Perform search functionality
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Adventure",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 1,
                    color: const Color(0xFF5550EE),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "Zone",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 1,
                    color: const Color(0xFF000000),
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
                                image: AssetImage("assets/images/place1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            right: 8,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Adventure",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                          Text(
                            "Zone",
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
                                image: AssetImage("assets/images/place2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            right: 8,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Historical",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                          Text(
                            "Places",
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
                                image: AssetImage("assets/images/place3.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            right: 8,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Offbeat ",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                          Text(
                            "Places",
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
                                image: AssetImage("assets/images/place2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            right: 8,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Adventure",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                          Text(
                            "Zone",
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
            Container(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Quick Picks For You",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.008,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(
                                0xFF137ABF) // Add your desired background color
                            ),
                        child: const Center(
                          child: Text(
                            "50% Off",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.015,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: const Color(0xFF878787)),
                          color:
                              Colors.white, // Add your desired background color
                        ),
                        child: const Center(
                          child: Text(
                            "Offers",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 106,
                            height: 122,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/az1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            right: 8,
                            child: Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
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
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.blue,
                            size: 15,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "4.1",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
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
                            width: 106,
                            height: 122,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/az2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            right: 8,
                            child: Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Historical",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                          Text(
                            "Relaxing Mo..",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.blue,
                            size: 15,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "4.1",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
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
                            width: 106,
                            height: 122,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/az3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            right: 8,
                            child: Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Coffee",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                          Text(
                            "Nescafe Tim..",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: const Color(0xFF36363A)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.blue,
                            size: 15,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "4.1",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
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
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 106,
                            height: 122,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/az4.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            right: 8,
                            child: Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
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
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.blue,
                            size: 15,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "4.1",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
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
                            width: 106,
                            height: 122,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/az5.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            right: 8,
                            child: Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
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
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.blue,
                            size: 15,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "4.1",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
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
                            width: 106,
                            height: 122,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/az6.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            right: 8,
                            child: Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
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
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.blue,
                            size: 15,
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Text(
                            "4.1",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
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
              height: height * 0.03,
            ),
            Container(
              height: 339,
              width: 392,
              decoration: const BoxDecoration(color: Color(0xFFF1F0F7)),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 10, top: 25),
                  height: 303,
                  width: 359,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Summer Offers",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xFF137ABF)),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          const Text(
                            "On Exciting Adventures ",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            physics: const BouncingScrollPhysics(),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 20),
                                  height: 164,
                                  width: 133,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFFFFF4CD),
                                        Color(0xFFFAE6B0),
                                        Color(0xFFF5D997),
                                        Color(0xFFF7E4AC),
                                      ],
                                      stops: [0.0, 1.0, 1.0, 0.3542],
                                      begin: Alignment.centerRight,
                                      end: Alignment.center,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Tour",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black),
                                      ),
                                      const Text(
                                        "Unlimited",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black),
                                      ),
                                      Transform.translate(
                                          offset: const Offset(0, 22),
                                          child: Image.asset(
                                              "assets/images/offer1.png"))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 20),
                                  height: 164,
                                  width: 133,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const SweepGradient(
                                      colors: [
                                        Color(0xFFA0F9FF),
                                        Color(0xFF99D5FA),
                                        Color(0xFF87CCF8),
                                      ],
                                      stops: [0.0, 1.0, 1.0],

                                      // endAngle: 2 * 3.14159,
                                      // transform: GradientRotation(0.0),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Tour",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black),
                                      ),
                                      const Text(
                                        "Unlimited",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black),
                                      ),
                                      Transform.translate(
                                          offset: const Offset(0, 22),
                                          child: Image.asset(
                                              "assets/images/offer2.png"))
                                    ],
                                  ),
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
            ),
            SizedBox(
              height: height * 0.03,
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
                          "Jetski",
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
                          "Bunjee Jumping",
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
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Explore Adventures",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ]),
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
                          width: 90,
                          height: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/az3.png"),
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
                                "Bunjee Jumping",
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
                          Row(children: [
                            const Text(
                              "Jumping Heights",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
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
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 85,
                                decoration: BoxDecoration(
                                  color: Color(0xFF20A0EF),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    "Book Now",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
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
                          width: 90,
                          height: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/az6.png"),
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
                                "Sky Diving",
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
                          Row(children: [
                            const Text(
                              "Jumping Heights",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
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
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 85,
                                decoration: BoxDecoration(
                                  color: Color(0xFF20A0EF),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    "Book Now",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
