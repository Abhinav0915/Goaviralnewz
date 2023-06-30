import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
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
                "A nice quaint cafe with a good view of the lower city \nand mountains.Good to visit even when clody or \nraining because they have a friendly pupper to keep \nguets company as you",
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
                    "Normal Entry",
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
                    "INR 800",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    " / person",
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
                    "Stag Entry",
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
                    "Free for All",
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
                    "Alchoholic & DJ",
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
                    "Good for",
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
                    "Coffee, Snack food, Take away",
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
