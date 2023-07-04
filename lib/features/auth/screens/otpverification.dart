import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goaviralnews/common/widgets/custom_appbar.dart';
import 'package:goaviralnews/common/widgets/custom_elevatedbutton.dart';
import 'package:goaviralnews/features/auth/screens/register.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pinput/pinput.dart';
import '../../../size_config.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({Key? key}) : super(key: key);

  static const String routName = "/otp-verification-page";

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  var code = "";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    var code = "";

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
                      router: "/onboarding-page",
                      title: "Login",
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Please sign in to continue...",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: width * 0.02,
                    //   ),
                    //   child: IntlPhoneField(
                    //     flagsButtonMargin: const EdgeInsets.symmetric(
                    //       horizontal: 8,
                    //     ),
                    //     decoration: const InputDecoration(
                    //       hintText: 'Mobile Number',
                    //       border: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //           color: GlobalVariables.fadedTextColor,
                    //           width: 0.5,
                    //         ),
                    //       ),
                    //     ),
                    //     initialCountryCode: 'IN',
                    //     onChanged: (phone) {
                    //       setState(() {
                    //         // You can optionally store the phone number if needed
                    //       });
                    //     },
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: height * 0.025,
                    // ),
                    const Text(
                      "Enter the Verification Code we just sent on your given number.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Pinput(
                      length: 6,
                      showCursor: true,
                      onChanged: (value) {
                        code = value;
                      },
                      onCompleted: (pin) => print(pin),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: List.generate(6, (index) {
                    //     return SizedBox(
                    //       width: 50,
                    //       child: TextFormField(
                    //         keyboardType: TextInputType.number,
                    //         textAlign: TextAlign.center,
                    //         style: const TextStyle(fontSize: 24),
                    //         decoration: const InputDecoration(
                    //           contentPadding: EdgeInsets.symmetric(vertical: 8),
                    //           border: OutlineInputBorder(),
                    //           counterText: "",
                    //         ),
                    //         maxLength: 1,
                    //         onChanged: (value) {
                    //           setState(() {});
                    //           if (value.isNotEmpty) {
                    //             if (index < 3) {
                    //               FocusScope.of(context).nextFocus();
                    //             } else {
                    //               // Hide keyboard on last digit
                    //               FocusScope.of(context).unfocus();
                    //             }
                    //           }
                    //         },
                    //       ),
                    //     );
                    //   }),
                    // ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Didn't Receive Code?",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: GlobalVariables.extraFadedTextColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle resend code functionality
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      GlobalVariables.secondaryButtonColor,
                                  elevation: 0,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.03,
                                    vertical: height * 0.01,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Text(
                                  "Click here to resend",
                                  style: TextStyle(
                                    color: GlobalVariables.fadedTextColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            "You will receive an SMS verification that may apply message and data rates.",
                            style: TextStyle(
                              fontSize: 10,
                              color: GlobalVariables.extraFadedTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                      verificationId: RegisterPage.verify,
                      smsCode: code,
                    );
                    await auth.signInWithCredential(credential);
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/create-profile-page",
                      (route) => false,
                    );
                  },
                  child: Center(
                    child: Text("Verify"),
                  )),
              // CustomElevatedButton(
              //   title: "Verify OTP",
              //   router: "/create-profile-page",
              //   onPressed: () async {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
