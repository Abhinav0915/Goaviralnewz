import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/widgets/cusom_tripzie_card.dart';
import 'package:goaviralnews/features/navigation/widgets/custom_tripzie_card2.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:goaviralnews/size_config.dart';
import 'package:intl/intl.dart';

class TripSectionPage extends StatefulWidget {
  const TripSectionPage({super.key});

  @override
  State<TripSectionPage> createState() => _TripSectionPageState();
}

class _TripSectionPageState extends State<TripSectionPage> {

  String selectedAvatar = "assets/icons/Group 42.png"; // Default avatar path

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    var currentDate = DateTime.now();
    final currentDay = DateFormat('EEEE').format(currentDate);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFE8ECF4),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: IconButton(
                      // ignore: prefer_const_constructors
                      icon: Image.asset(selectedAvatar),
                      onPressed: () {},
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Tripzie",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notification_add_outlined),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "🚙 Here’s your Personalised Traveling Plan",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Showing for $currentDay.",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    const CustomTripzieCard(
                      title: "The Beauty of amazing India",
                      location: "Kashmir, India",
                      imageData: "assets/images/image13.png",
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    const CustomTripzieCard(
                      title: "Explore best sunsets in maldives",
                      location: "Maldives",
                      imageData: "assets/images/image14.png",
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    const CustomTripzieCard(
                      title: "Explore best sunsets in maldives",
                      location: "Maldives",
                      imageData: "assets/images/image14.png",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Container(
                height: 80,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFEDEDED),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    final date = DateTime.now().add(Duration(days: index));
                    final dayOfWeek = _getDayOfWeek(date.weekday);
                    final dayOfMonth = date.day;
                    final isCurrentDay = index == 0;

                    return Container(
                      width: 50,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: isCurrentDay ? Colors.blue : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            dayOfWeek,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: isCurrentDay ? Colors.white : Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            '$dayOfMonth',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: isCurrentDay
                                  ? Colors.white
                                  : GlobalVariables.extraFadedTextColor,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.all(12),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    const CustomTripzie(
                      imageData: "assets/images/image16.png",
                      title: "Outdoor Wolfs",
                      subTitle: "Hassan, Akram",
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    const CustomTripzie(
                      imageData: "assets/images/image16.png",
                      title: "Outdoor Wolfs",
                      subTitle: "Hassan, Akram",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getDayOfWeek(int weekday) {
    switch (weekday) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thu';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return '';
    }
  }
}
