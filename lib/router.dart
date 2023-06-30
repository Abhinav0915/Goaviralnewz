import 'package:flutter/material.dart';
import 'package:goaviralnews/features/auth/screens/avatar.dart';
import 'package:goaviralnews/features/auth/screens/login.dart';
import 'package:goaviralnews/features/auth/screens/otpverification.dart';
import 'package:goaviralnews/features/auth/screens/otpverification_register.dart';
import 'package:goaviralnews/features/auth/screens/profile.dart';
import 'package:goaviralnews/features/auth/screens/register.dart';
import 'package:goaviralnews/features/navigation/screens/clubs.dart';
import 'package:goaviralnews/features/navigation/screens/dashboard.dart';
import 'package:goaviralnews/features/navigation/screens/slider.dart';
import 'package:goaviralnews/features/onboarding/screens/onboarding.dart';
import 'package:goaviralnews/routes.dart';
import 'package:goaviralnews/features/navigation/screens/ClubDetailsPage.dart';
import 'package:goaviralnews/features/navigation/screens/CustomPlan.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case OnboardingPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const OnboardingPage(),
      );
    case LoginPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginPage(),
      );
    case RegisterPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const RegisterPage(),
      );
    case OtpVerificationPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const OtpVerificationPage(),
      );
    case CreateProfilePage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CreateProfilePage(),
      );
    case DashboardPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const DashboardPage(),
      );
    case Routes.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Routes(),
      );
    case AvatarPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AvatarPage(),
      );
    case OtpVerificationRegisterPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const OtpVerificationRegisterPage(),
      );
    case SliderPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SliderPage(),
      );
    case ClubsPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ClubsPage(),
      );
    case ClubDetailsPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ClubDetailsPage(),
      );
    case CustomTravellingPlan.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CustomTravellingPlan(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("This Screen does not exist"),
          ),
        ),
      );
  }
}
