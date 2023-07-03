import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../../globalVariables.dart';
import '../../../size_config.dart';

class Trending extends StatelessWidget {
  const Trending({
    super.key,
    required this.name,
    required this.iconData,
    required this.imageData,
    required this.width,
    required this.gap,
  });

  final String name;
  final IconData iconData;
  final String imageData;
  final double width;
  final double gap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Column(
      children: [
        Stack(
          children: [
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(30),
              dashPattern: [width, gap],
              color: Colors.blue,
              strokeWidth: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: EdgeInsets.all(2),
                  child: Image.asset(
                    imageData,
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.blue,
                  border: Border.all(
                    color: GlobalVariables.backgroundColor,
                    width: 2,
                  ),
                ),
                child: Icon(
                  iconData,
                  color: GlobalVariables.backgroundColor,
                  size: 10,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.005,
        ),
        Text(
          name,
          style: TextStyle(
            fontFamily: 'ComicSans',
            fontSize: 11,
            color: Colors.blue,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
