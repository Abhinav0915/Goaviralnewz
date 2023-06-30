import 'package:flutter/material.dart';
import '../../../size_config.dart';

class CustomTripzie extends StatelessWidget {
  const CustomTripzie({
    super.key,
    required this.imageData,
    required this.title,
    required this.subTitle,
  });

  final String imageData;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8.0, // soften the shadow
            spreadRadius: 4.0, //extend the shadow
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            imageData,
          ),
          SizedBox(
            width: width * 0.06,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: width * 0.06,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Container(
                  width: 100,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/icons/ic_avatar.png',
                        height: 30,
                      ), // Background image
                      Positioned(
                        top: 0,
                        left: 20,
                        child: Image.asset(
                          'assets/icons/ic_avatar.png',
                          height: 30,
                        ), // Image to be partially overlapped
                      ),
                      Positioned(
                        top: 0,
                        left: 40,
                        child: Image.asset(
                          'assets/icons/ic_avatar.png',
                          height: 30,
                        ), // Image to be partially overlapped
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
