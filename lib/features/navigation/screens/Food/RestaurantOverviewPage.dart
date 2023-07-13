import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class RestaurantOverviewPage extends StatefulWidget {
  const RestaurantOverviewPage({super.key});

  static const String routName = "/restaurantoverview-page";
  @override
  State<RestaurantOverviewPage> createState() => _RestaurantOverviewPageState();
}

class _RestaurantOverviewPageState extends State<RestaurantOverviewPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.045,
          vertical: height * 0.025,
        ),
        child: Column(children: [
          const Row(
            children: [
              Text(
                "About",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          const Row(
            children: [
              Text(
                "Fine-dining restaurant popular for fish meals, \nalso offering other vegetarian & non-vegetarian fare.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
                maxLines: 4,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          const Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: height * 0.008,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Service options:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Dine-in, Takeaway, Delivery",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: height * 0.008,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Hours: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Open ⋅ Closes 11PM",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: height * 0.008,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Type",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Family and Casual Dining",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: height * 0.008,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Distance",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "10 KM",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: height * 0.008,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Famous For:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Pizza",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const Row(
            children: [
              Text(
                "Recommended For",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            children: [
              const Icon(
                Icons.coffee,
                color: Colors.black,
              ),
              SizedBox(
                width: width * 0.03,
              ),
              const Text("Backelors & Couples")
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            children: [
              const Icon(
                CupertinoIcons.car_detailed,
                color: Colors.black,
              ),
              SizedBox(
                width: width * 0.03,
              ),
              const Text("Free bike park")
            ],
          )
        ]),
      ),
    );
  }
}
