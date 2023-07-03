import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/widgets/hotels.dart';

import 'package:goaviralnews/features/navigation/widgets/yellow_avatar.dart';
import 'package:goaviralnews/globalVariables.dart';
import '../../../size_config.dart';
import '../widgets/beaches.dart';
import '../widgets/meditation.dart';
import '../widgets/sunset.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  static const String routName = "/search-page";

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String selectedAvatar = "assets/icons/Group 42.png"; // Default avatar path

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.03,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: GlobalVariables.primaryIconButtonBorderColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: IconButton(
                      // ignore: prefer_const_constructors
                      icon: Image.asset(selectedAvatar),
                      onPressed: () {},
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: width * 0.025,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05,
                      vertical: height * 0.015,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: GlobalVariables.primaryButtonColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ImageIcon(
                                  AssetImage("assets/icons/instagram.png"),
                                  color: GlobalVariables.backgroundColor,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                Text(
                                  "Follow us on instagram",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            const Text(
                              "Share your reels with us and attract Discount😊",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 8,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Container(
                          height: 32,
                          width: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue.shade600),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(1),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Wrap(
                  spacing: width * 0.05,
                  children: const [
                    Hotels(
                      name: "Add Story",
                      iconData: Icons.videocam,
                      imageData: "assets/icons/Group 43.png",
                      width: 10,
                      gap: 0,
                    ),
                    YellowAvatar(
                      name: "Chirag",
                      iconData: Icons.videocam,
                      imageData: "assets/icons/Group 51.png",
                      width: 10,
                      gap: 0,
                    ),
                    Meditation(
                      name: "Chirag",
                      iconData: Icons.lightbulb,
                      imageData: "assets/icons/Group 34.png",
                      width: 10,
                      gap: 10,
                    ),
                    Beaches(
                      name: "Chirag",
                      iconData: Icons.lightbulb,
                      imageData: "assets/icons/Group 61.png",
                      width: 10,
                      gap: 10,
                    ),
                    Sunset(
                      name: "Chirag",
                      iconData: Icons.videocam,
                      imageData: "assets/icons/Group 48.png",
                      width: 10,
                      gap: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.7,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.09),
                          spreadRadius: 3,
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        hintText: 'Search....',
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      // Other TextFormField properties and callbacks
                    ),
                  ),
                  Container(
                    width: width * 0.12,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.09),
                          spreadRadius: 3,
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(Icons.search),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.035,
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
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue.shade700,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home_filled,
                            size: 12,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Hotels",
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
                      width: 36,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade200,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.maps_home_work_outlined,
                            size: 12,
                            color: Colors.black45,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Market",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 36,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade200,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.coffee_outlined,
                            size: 12,
                            color: Colors.black45,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Cafe",
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
            ],
          ),
        ),
      ),
    );
  }
}
