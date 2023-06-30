import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../../globalVariables.dart';
import '../../../size_config.dart';

class Meditation extends StatelessWidget {
  const Meditation({
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
    var CardRadius = 20.0;
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Column(
      children: [
        Stack(
          children: [
            DottedBorder(
              color: Colors.purple,
              strokeWidth: 2,
              radius: Radius.circular(CardRadius),
              dashPattern: [5, 3],
              customPath: (size) {
                return Path()
                  ..moveTo(CardRadius, 0)
                  ..lineTo(size.width - CardRadius, 0)
                  ..arcToPoint(Offset(size.width, CardRadius),
                      radius: Radius.circular(CardRadius))
                  ..lineTo(size.width, size.height - CardRadius)
                  ..arcToPoint(Offset(size.width - CardRadius, size.height),
                      radius: Radius.circular(CardRadius))
                  ..lineTo(CardRadius, size.height)
                  ..arcToPoint(Offset(0, size.height - CardRadius),
                      radius: Radius.circular(CardRadius))
                  ..lineTo(0, CardRadius)
                  ..arcToPoint(Offset(CardRadius, 0),
                      radius: Radius.circular(CardRadius));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
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
                  color: Colors.purple,
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
            color: Colors.purple,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
