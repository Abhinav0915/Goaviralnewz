import 'package:flutter/material.dart';
import 'package:goaviralnews/common/widgets/custom_appbar.dart';
import 'package:goaviralnews/common/widgets/custom_elevatedbutton.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../size_config.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static const String routName = "/register-page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _noButtonClicked = false;
  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.03,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    const CustomAppbar(
                      title: "Create Account",
                      router: "/onboarding-page",
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "An all-in-one platform that helps you plan the perfect Goa vacation in just a few clicks.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: IntlPhoneField(
                        flagsButtonMargin: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Mobile Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalVariables.fadedTextColor,
                              width: 0.5,
                            ),
                          ),
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          phoneNumber = phone.number;
                          print(phone.completeNumber);
                          print(phone.countryCode);
                          print(phone.number);
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Do you have ",
                              style: TextStyle(
                                fontSize: 16,
                                color: GlobalVariables.extraFadedTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(
                              Icons.change_circle_outlined,
                              size: 16,
                              color: Colors.lightGreenAccent.shade700,
                            ),
                            const Text(
                              " Whatsapp?",
                              style: TextStyle(
                                fontSize: 16,
                                color: GlobalVariables.extraFadedTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _noButtonClicked
                                    ? Colors.grey.shade200
                                    : Colors.lightGreenAccent.shade700,
                                elevation: 0,
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: _noButtonClicked
                                          ? Colors.grey
                                          : Colors.white),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _noButtonClicked = true;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _noButtonClicked
                                    ? Colors.red
                                    : Colors.grey.shade200,
                                elevation: 0,
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "No",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: _noButtonClicked
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    const Text(
                      "You will receive an SMS verification that may apply message and data rates.",
                      style: TextStyle(
                        fontSize: 12,
                        color: GlobalVariables.extraFadedTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: CustomElevatedButton(
                  title: "Verify Number",
                  router: "/otp-verification-register-page",
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/otp-verification-register-page",
                      arguments: phoneNumber,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
