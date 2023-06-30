import 'package:flutter/material.dart';
import 'package:goaviralnews/globalVariables.dart';
import '../../../size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.router});
  final String text;
  final String router;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return ElevatedButton(
      onPressed: () => {
        Navigator.pushNamed(context, router),
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: GlobalVariables.primaryButtonColor,
        elevation: 0,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.06,
          vertical: height * 0.014,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(text),
    );
  }
}
