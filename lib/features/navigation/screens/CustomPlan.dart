import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

class CustomTravellingPlan extends StatefulWidget {
  const CustomTravellingPlan({Key? key});

  static const String routName = "/customtrip-page";

  @override
  State<CustomTravellingPlan> createState() => _CustomTravellingPlanState();
}

class _CustomTravellingPlanState extends State<CustomTravellingPlan> {
  double _visitorCount = 2;
  double _budgetRange = 1000;
  List<String> tags = [
    'Adventure',
    'Relaxing',
    'Beaches',
    'CLubs',
    'Temples',
    'Waterfall',
    'Cultural Fest',
    'Nightlife',
    'Adventure1',
    'Relaxing2',
    'Beaches3',
    'CLubs4',
  ];
  List<String> selectedTags = [];
  List<String> tourPlan = [
    'Bachelors',
    'Couples',
  ];
  List<String> location = ['South Goa', 'North Goa', 'Both'];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Build your own custom travelling plan',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Select Date :",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: width * 0.05,
                      right: width * 0.05,
                    ),
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Icon(CupertinoIcons.calendar_badge_plus),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        const Text("from"),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: width * 0.05,
                      right: width * 0.05,
                    ),
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Icon(CupertinoIcons.calendar_badge_plus),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        const Text("to"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Number of Visitors:",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                Text(
                  "${_visitorCount.toInt()} Visitors",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      width: width * 0.7,
                      child: Slider(
                        min: 1,
                        max: 10,
                        divisions: 9,
                        value: _visitorCount,
                        onChanged: (double value) {
                          setState(() {
                            _visitorCount = value;
                          });
                        },
                      ),
                    ),
                    const Text("Adults",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        )),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("Selected Tags: ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      "Select 5",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Wrap(
                  spacing: 5,
                  runSpacing: 8,
                  children: tags.map((tag) {
                    bool isSelected = selectedTags
                        .contains(tag); // Check if the tag is selected

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedTags.remove(
                                tag); // Remove the tag if already selected
                          } else {
                            selectedTags
                                .add(tag); // Add the tag if not selected
                          }
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isSelected
                              ? Colors.blue
                              : Colors
                                  .transparent, // Set the background color based on the selection
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Text(
                          tag,
                          style: TextStyle(
                            fontSize: 12,
                            color: isSelected
                                ? Colors.white
                                : Colors
                                    .black, // Set the text color based on the selection
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Budget Range:",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                Text(
                  "₹ ${_budgetRange.toInt()} / Day",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      width: width * 0.7,
                      child: Slider(
                        min: 1000,
                        max: 50000,
                        divisions: 50,
                        value: _budgetRange,
                        onChanged: (double value) {
                          setState(() {
                            _budgetRange = value;
                          });
                        },
                      ),
                    ),
                    const Text("₹18,000",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        )),
                  ],
                )
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 10),
              child: Row(
                children: [
                  Text("Tour Plan : ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text(
                    "Select 5",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Wrap(
              spacing: 120,
              runSpacing: 8,
              children: tourPlan.map((tag) {
                bool isSelected =
                    selectedTags.contains(tag); // Check if the tag is selected

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isSelected) {
                        selectedTags
                            .remove(tag); // Remove the tag if already selected
                      } else {
                        selectedTags.add(tag); // Add the tag if not selected
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isSelected
                          ? Colors.blue
                          : Colors
                              .transparent, // Set the background color based on the selection
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Text(
                      tag,
                      style: TextStyle(
                        fontSize: 12,
                        color: isSelected
                            ? Colors.white
                            : Colors
                                .black, // Set the text color based on the selection
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 10),
              child: Row(
                children: [
                  Text("Location : ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text(
                    "Select 5",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Wrap(
              spacing: 30,
              runSpacing: 8,
              children: location.map((tag) {
                bool isSelected =
                    selectedTags.contains(tag); // Check if the tag is selected

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isSelected) {
                        selectedTags
                            .remove(tag); // Remove the tag if already selected
                      } else {
                        selectedTags.add(tag); // Add the tag if not selected
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isSelected
                          ? Colors.blue
                          : Colors
                              .transparent, // Set the background color based on the selection
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Text(
                      tag,
                      style: TextStyle(
                        fontSize: 12,
                        color: isSelected
                            ? Colors.white
                            : Colors
                                .black, // Set the text color based on the selection
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Container(
              width: width * 0.9,
              height: height * 0.06,
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Generate",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
