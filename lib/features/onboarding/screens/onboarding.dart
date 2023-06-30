import 'package:flutter/material.dart';
import 'package:goaviralnews/features/onboarding/widgets/custom_button.dart';
import 'package:goaviralnews/globalVariables.dart';
import '../../../size_config.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  static const String routName = "/onboarding-page";

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: width / 8,
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    const Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    const Text(
                      "Log in with your details to continue",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        CustomButton(
                          text: "Log in",
                          router: "/login-page",
                        ),
                        CustomButton(
                          text: "Sign up",
                          router: "/register-page",
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: height / 12,
                  child: Image.asset("assets/icons/ic_plane.png"),
                ),
                Positioned(
                  top: height / 5,
                  right: width / 4,
                  child: Image.asset("assets/icons/ic_docs.png"),
                ),
                Positioned(
                  bottom: height / 12,
                  left: 36,
                  child: Image.asset("assets/icons/ic_globe.png"),
                ),
                Positioned(
                  bottom: height / 6,
                  right: 24,
                  child: Image.asset("assets/icons/ic_rocket.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
