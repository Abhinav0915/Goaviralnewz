import 'package:flutter/material.dart';

class CustomTripzieCard extends StatefulWidget {
  const CustomTripzieCard({
    Key? key,
    required this.title,
    required this.location,
    required this.imageData,
  }) : super(key: key);

  final String title;
  final String location;
  final String imageData;

  @override
  // ignore: library_private_types_in_public_api
  _CustomTripzieCardState createState() => _CustomTripzieCardState();
}

class _CustomTripzieCardState extends State<CustomTripzieCard> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          widget.imageData,
        ),
        Positioned(
          bottom: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  widget.location,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 12,
          top: 12,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isChecked = !_isChecked;
              });
            },
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2.0,
                  color: Colors.white,
                ),
                color: _isChecked ? Colors.blue : Colors.white,
              ),
              child: _isChecked
                  ? const Icon(
                      Icons.check,
                      size: 16.0,
                      color: Colors.white,
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
