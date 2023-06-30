import 'package:flutter/material.dart';
import 'package:goaviralnews/globalVariables.dart';
import '../../size_config.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.router, required this.title, this.onPressed});
  final String router;
  final String title;
   final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: GlobalVariables.primaryButtonColor,
        elevation: 0,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.25,
          vertical: height * 0.015,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: SizedBox(
        width: width / 3,
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
