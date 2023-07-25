import 'package:flutter/material.dart';
import 'package:goaviralnews/features/auth/screens/avatar.dart';
import 'package:goaviralnews/features/auth/screens/login.dart';
import 'package:goaviralnews/features/auth/screens/otpverification.dart';
import 'package:goaviralnews/features/auth/screens/otpverification_register.dart';
import 'package:goaviralnews/features/auth/screens/profile.dart';
import 'package:goaviralnews/features/auth/screens/register.dart';
import 'package:goaviralnews/features/navigation/screens/Adventure/adventurepage.dart';
import 'package:goaviralnews/features/navigation/screens/Beaches/beachesPage.dart';
import 'package:goaviralnews/features/navigation/screens/Clubs/ClubsPage.dart';
import 'package:goaviralnews/features/navigation/screens/Food/RestaurantDetailsPage.dart';
import 'package:goaviralnews/features/navigation/screens/Food/RestaurantPage.dart';
import 'package:goaviralnews/features/navigation/screens/GoaTour/GoaTourPage.dart';
import 'package:goaviralnews/features/navigation/screens/Historical/historicalPage.dart';
import 'package:goaviralnews/features/navigation/screens/Market/marketPage.dart';
import 'package:goaviralnews/features/navigation/screens/Offbeat/offbeatPage.dart';
import 'package:goaviralnews/features/navigation/screens/Stay/HotelOverviewPage.dart';
import 'package:goaviralnews/features/navigation/screens/Treking/trekingPage.dart';
import 'package:goaviralnews/features/navigation/screens/dashboard.dart';
import 'package:goaviralnews/features/navigation/screens/slider.dart';
import 'package:goaviralnews/features/navigation/screens/Stay/HotelsPage.dart';
import 'package:goaviralnews/features/onboarding/screens/onboarding.dart';
import 'package:goaviralnews/routes.dart';
import 'package:goaviralnews/features/navigation/screens/Clubs/ClubDetailsPage.dart';
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
    case CustomTravellingPlan.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CustomTravellingPlan(),
      );

    //Clubs Page Routes
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

    //Hotel Page Routes
    case HotelsPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HotelsPage(),
      );
    case HotelOverviewPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HotelOverviewPage(),
      );
    //Restaurant Page Routes
    case RestaurantPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const RestaurantPage(),
      );
    case RestaurantDetailsPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const RestaurantDetailsPage(),
      );
    //Goa Tour Page Routes
    case GoaTourPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const GoaTourPage(),
      );
    //Adventure Pages
    case AdventurePage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AdventurePage(),
      );
    //Historical Page
    case HistoricalPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HistoricalPage(),
      );
    //Offbeat Page
    case OffbeatPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const OffbeatPage(),
      );

    //Market Page
    case MarketPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const MarketPage(),
      );
    //Beaches Page
    case BeachesPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BeachesPage(),
      );

    //Treking Page
    case TrekingPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const TrekingPage(),
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
