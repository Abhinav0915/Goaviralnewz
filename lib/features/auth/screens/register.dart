import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Added import for CupertinoAlertDialog
import 'package:goaviralnews/common/widgets/custom_appbar.dart';
import 'package:goaviralnews/common/widgets/custom_elevatedbutton.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../size_config.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static String? _verify;

  static String? get verify => _verify;

  static const String routName = "/register-page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _noButtonClicked = false;
  String? phoneNumber;
  var phone = "";

  TextEditingController _countrycode = TextEditingController();
  String? _otp; // Added variable to hold OTP

  @override
  void initState() {
    _countrycode.text = "+91";
    super.initState();
  }

  Future<void> _showOtpVerificationPopup(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "OTP Verification",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          content: TextField(
            onChanged: (value) {
              setState(() {
                _otp = value;
              });
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Enter OTP",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          actions: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Verify the OTP entered
                    FirebaseAuth.instance
                        .signInWithCredential(
                      PhoneAuthProvider.credential(
                        verificationId: RegisterPage.verify!,
                        smsCode: _otp!,
                      ),
                    )
                        .then((credential) {
                      if (credential.user != null) {
                        // OTP verification successful
                        Navigator.pushNamed(
                          context,
                          "/create-profile-page",
                        );
                      } else {
                        // OTP verification failed
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Invalid OTP. Please try again."),
                          ),
                        );
                      }
                    }).catchError((error) {
                      // Error occurred during OTP verification
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("An error occurred. Please try again."),
                        ),
                      );
                    });
                  },
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                ),
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: Colors.white,
          elevation: 5,
        );
      },
    );
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
                            height: height * 0.037,
                            width: width * 0.08,
                            child: TextField(
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              controller: _countrycode,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.035,
                            width: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(width: width * 0.03),
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                phone = value;
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              textAlignVertical: TextAlignVertical
                                  .center, // Center align the text vertically
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Number",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                counterText:
                                    "", // Remove the default character count
                              ),
                            ),
                          ),
                        ],
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
                            Image.asset("assets/icons/whatsapp.png",
                                height: 16, width: 16),
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
                                shape: const RoundedRectangleBorder(
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
                                shape: const RoundedRectangleBorder(
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
                    // Perform phone number verification and then show the OTP verification popup
                    if (phone.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Please enter a mobile number"),
                        ),
                      );
                    } else {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '${_countrycode.text + phone}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          setState(() {
                            RegisterPage._verify = verificationId;
                          });
                          _showOtpVerificationPopup(
                              context); // Show OTP verification popup
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    }
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
