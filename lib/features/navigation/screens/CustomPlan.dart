import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:custom_date_range_picker/custom_date_range_picker.dart'
    as DateRangePicker;

class CustomTravellingPlan extends StatefulWidget {
  const CustomTravellingPlan({Key? key});

  static const String routName = "/customtrip-page";

  @override
  State<CustomTravellingPlan> createState() => _CustomTravellingPlanState();
}

class _CustomTravellingPlanState extends State<CustomTravellingPlan> {
  double _visitorCount = 2;
  double _budgetRange = 1000;

  String fromDateText = 'From';
  String toDateText = 'To';

  DateTimeRange _dateRange = DateTimeRange(
    start: DateTime.now(),
    // end: DateTime.now().add(const Duration(days: 7)),
    end: DateTime.now(),
  );

  List<String> tags = [
    'Adventure',
    'Relaxing',
    'Beaches',
    'Clubs',
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
  List<String> selectedLocation = []; // New list for selected location

  Future pickDateRange() async {
    final screenHeight = MediaQuery.of(context).size.height;
    final dialogHeight = screenHeight * 0.6;
    final dialogTopOffset = screenHeight * 0.2;

    final pickedRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      initialDateRange: _dateRange,
      initialEntryMode: DatePickerEntryMode.calendar,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData
              .light(), // Customize the date picker dialog theme if needed
          child: SizedBox(
            height: dialogHeight,
            child: Column(
              children: [
                SizedBox(height: dialogTopOffset),
                child ?? const SingleChildScrollView(),
              ],
            ),
          ),
        );
      },
    );

    if (pickedRange != null) {
      setState(() {
        _dateRange = pickedRange;
        fromDateText =
            '${pickedRange.start.day}/${pickedRange.start.month}/${pickedRange.start.year}';
        toDateText =
            '${pickedRange.end.day}/${pickedRange.end.month}/${pickedRange.end.year}';
      });
    }
  }

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
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: pickDateRange,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: width * 0.05,
                        right: width * 0.05,
                      ),
                      width: 140,
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
                          Text(
                            fromDateText,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: pickDateRange,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: width * 0.05,
                        right: width * 0.05,
                      ),
                      width: 140,
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
                          Text(
                            toDateText,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Row(
              children: [
                Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedLocation = ['South Goa'];
                          });
                        },
                        child: Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: selectedLocation.contains('South Goa')
                                ? Colors.blue
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "South Goa",
                              style: TextStyle(
                                fontSize: 10,
                                color: selectedLocation.contains('South Goa')
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedLocation = ['North Goa'];
                          });
                        },
                        child: Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: selectedLocation.contains('North Goa')
                                ? Colors.blue
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "North Goa",
                              style: TextStyle(
                                fontSize: 10,
                                color: selectedLocation.contains('North Goa')
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedLocation = ['Both'];
                          });
                        },
                        child: Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: selectedLocation.contains('Both')
                                ? Colors.blue
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Both Goa",
                              style: TextStyle(
                                fontSize: 10,
                                color: selectedLocation.contains('Both')
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${_visitorCount.toInt()} Visitors",
                  style: const TextStyle(
                    fontSize: 14,
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
                const Row(
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
                  spacing: 15,
                  runSpacing: 5,
                  children: tags.map((tag) {
                    bool isSelected = selectedTags.contains(tag);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedTags.remove(tag);
                          } else {
                            if (selectedTags.length < 5) {
                              selectedTags.add(tag);
                            }
                          }
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: isSelected
                                      ? Colors.blue
                                      : Colors.transparent,
                                ),
                                child: Center(
                                  child: Text(
                                    tag,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
              height: height * 0.15,
            ),
            Container(
              width: width * 0.6,
              height: height * 0.06,
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Generate",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
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
