import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:goaviralnews/size_config.dart';

class PhotoGalleryScreen extends StatefulWidget {
  const PhotoGalleryScreen({Key? key}) : super(key: key);

  @override
  _PhotoGalleryScreenState createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  final List<String> imageList = [
    'assets/images/im_gallery1.png',
    'assets/images/im_gallery1.png',
    'assets/images/im_gallery1.png',
    'assets/images/im_gallery1.png',
  ];

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
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFE8ECF4),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: IconButton(
                      icon: Image.asset(selectedAvatar),
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    "Galleria",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notification_add_outlined),
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
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    child: Image.asset(
                      imageList[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
