import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:goaviralnews/common/widgets/custom_appbar.dart';
import 'package:goaviralnews/common/widgets/custom_elevatedbutton.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../size_config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String routName = "/login-page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String phoneNo = '';
  final _auth = FirebaseAuth.instance;
  var verificationId = ''.obs;

  // Future<void> verifyPhoneNumber() async {
  //   FirebaseAuth auth = FirebaseAuth.instance;

  //   await auth.verifyPhoneNumber(
  //     phoneNumber: phoneNumber,
  //     timeout: const Duration(seconds: 60),
  //     verificationCompleted: (PhoneAuthCredential credential) {
  //       // Auto-retrieval of verification code completed.
  //       // You can sign in the user here using `credential`.
  //     },
  //     verificationFailed: (FirebaseAuthException e) {
  //       // Handle verification failure.
  //       print('Verification failed: ${e.message}');
  //     },
  //     codeSent: (String verificationId, int? resendToken) {
  //       // Navigate to OTP verification page passing the verification ID
  //       Navigator.pushNamed(
  //         context,
  //         '/otp-verification-page',
  //         arguments: verificationId,
  //       );
  //     },
  //     codeAutoRetrievalTimeout: (String verificationId) {
  //       // Auto-retrieval timeout callback
  //       // You can handle the timeout scenario here.
  //     },
  //   );
  // }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (e) {
        if (e.code == 'invalid-phone-number') {
          Get.snackbar("Error", 'The provided phone number is not valid.');
        } else {
          Get.snackbar("Error", "Something went wrong");
        }
      },
      codeSent: (verificationId, resendToken) {
        this.verificationId.value = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
        this.verificationId.value = verificationId;
      },
    );
  }

  Future<bool> verifyOTP(String otp) async {
    var credentials = await _auth.signInWithCredential(
      PhoneAuthProvider.credential(
        verificationId: verificationId.value,
        smsCode: otp,
      ),
    );
    //redirect to dashboard
    if (credentials.user != null) {
      Get.offNamed("/dashboard-page");
      return true;
    } else {
      Get.snackbar("Error", "Invalid OTP");
      return false;
    }
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
                      title: "Login",
                      router: "/onboarding-page",
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Please sign in to continue....",
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
                        controller: TextEditingController(text: phoneNo),
                        flagsButtonMargin: EdgeInsets.symmetric(
                          horizontal: width * 0.02,
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
                          phoneNo = phone.completeNumber;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: CustomElevatedButton(
                  title: "Verify Number",
                  router: "/otp-verification-page",
                  onPressed: () async {
                    await phoneAuthentication(phoneNo);
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
