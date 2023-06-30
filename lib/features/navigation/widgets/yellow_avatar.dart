import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../../globalVariables.dart';
import '../../../size_config.dart';

class YellowAvatar extends StatelessWidget {
  const YellowAvatar({
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
              radius: Radius.circular(20),
              dashPattern: [width, gap],
              color: Colors.yellow.shade700,
              strokeWidth: 2,
              child: Container(
                padding: EdgeInsets.all(2),
                child: Image.asset(
                  imageData,
                  height: 48,
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
                  color: Colors.yellow.shade700,
                  border: Border.all(
                    color: GlobalVariables.backgroundColor,
                    width: 2,
                  ),
                ),
                child: Icon(
                  iconData,
                  color: GlobalVariables.backgroundColor,
                  size: 12,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.yellow.shade700,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
