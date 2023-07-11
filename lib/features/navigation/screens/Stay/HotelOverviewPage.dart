import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class HotelOverviewPage extends StatefulWidget {
  const HotelOverviewPage({super.key});

  static const String routName = "/hoteloverview-page";

  @override
  State<HotelOverviewPage> createState() => _HotelOverviewPageState();
}

class _HotelOverviewPageState extends State<HotelOverviewPage> {
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
                  fontSize: 20,
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
                "Located in Anjuna, a few steps from Anjuna Beach, Zulu\nLand cottages - near Curlies beach shack and shiva\nvalley - Anjuna beach provides accommodations with\na fitness center, free private parking, a garden and a\nrestaurant. ",
                style: TextStyle(
                  fontSize: 14,
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
                    "Price",
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
                    "INR 2800",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "/night",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
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
                    "3 Star Hotel | Top Location",
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
                    "Room Type",
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
                    "Cottage With Garden View",
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
                    "Check In",
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
                    "12 PM",
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
                    "Check Out",
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
                    "11 AM",
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
                size: 25,
              ),
              SizedBox(
                width: width * 0.03,
              ),
              const Text("Backelors & Couples",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            children: [
              const Icon(
                CupertinoIcons.heart_fill,
                color: Colors.black,
              ),
              SizedBox(
                width: width * 0.03,
              ),
              const Text(
                "Pet Friendly",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
