import 'package:flutter/material.dart';
import '../../../globalVariables.dart';
import '../../../size_config.dart';

class CustomHotelCard extends StatelessWidget {
  const CustomHotelCard({
    super.key,
    required this.hotelName,
    required this.location,
    required this.views,
    required this.price,
    required this.imageData,
  });

  final String hotelName;
  final String location;
  final String views;
  final int price;
  final String imageData;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Container(
      padding: EdgeInsets.all(width * 0.03),
      decoration: BoxDecoration(
        color: GlobalVariables.backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: GlobalVariables.extraFadedTextColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            imageData,
          ),
          SizedBox(
            width: width * 0.045,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    hotelName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.12,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$" + price.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.blue.shade500),
                      ),
                      const Text(
                        "/night",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: GlobalVariables.extraFadedTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.blue.shade700,
                    size: 18,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 12,
                      color: GlobalVariables.extraFadedTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.person_outline_rounded,
                    color: GlobalVariables.extraFadedTextColor,
                    size: 18,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    views,
                    style: const TextStyle(
                      fontSize: 12,
                      color: GlobalVariables.extraFadedTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
