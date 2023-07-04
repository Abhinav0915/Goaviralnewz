import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/common/widgets/custom_appbar.dart';
import 'package:goaviralnews/common/widgets/custom_elevatedbutton.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../size_config.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static String verify = "";

  static const String routName = "/register-page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _noButtonClicked = false;
  String? phoneNumber;
  var phone = "";

  TextEditingController _countrycode = TextEditingController();

  @override
  void initState() {
    _countrycode.text = "+91";
    // TODO: implement initState
    super.initState();
  }

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
                      height: height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.05,
                          ),
                          SizedBox(
                            width: width * 0.08,
                            child: TextField(
                                controller: _countrycode,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                )),
                          ),
                          Text(
                            "|",
                            style: TextStyle(fontSize: 33, color: Colors.grey),
                          ),
                          SizedBox(width: width * 0.05),
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                phone = value;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Number",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Container(
                    //   padding: const EdgeInsets.symmetric(horizontal: 6),
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       hintText: "Enter Mobile Number",
                    //       hintStyle: TextStyle(
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.w400,
                    //       ),
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(8),
                    //         borderSide: BorderSide(
                    //           color: Colors.black,
                    //         ),
                    //       ),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(8),
                    //         borderSide: BorderSide(
                    //           color: Colors.black,
                    //         ),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(8),
                    //
                    //       ),
                    //     ),
                    //   ),
                    //   ),

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
                  onPressed: () async {
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '${_countrycode.text + phone}',
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        RegisterPage.verify = verificationId;
                        Navigator.pushNamed(
                          context,
                          "/otp-verification-page",
                        );
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
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
