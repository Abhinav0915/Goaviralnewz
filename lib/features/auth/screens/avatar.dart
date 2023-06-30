import 'package:flutter/material.dart';
import 'package:goaviralnews/common/widgets/custom_appbar.dart';
import 'package:goaviralnews/globalVariables.dart';
import '../../../size_config.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({Key? key});

  static const String routName = "/avatar-page";

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  late String selectedVariant;
  late String initialAvatarPath;

  Map<String, List<String>> imageLists = {
    'green': [
      'assets/icons/Group 32.png',
      'assets/icons/Group 33.png',
      'assets/icons/Group 34.png',
      'assets/icons/Group 35.png',
      'assets/icons/Group 36.png',
      'assets/icons/Group 37.png',
      'assets/icons/Group 38.png',
      'assets/icons/Group 39.png',
      'assets/icons/Group 40.png',
      'assets/icons/Group 41.png',
      'assets/icons/Group 42.png',
      'assets/icons/Group 43.png',
    ],
    'yellow': [
      'assets/icons/Group 44.png',
      'assets/icons/Group 45.png',
      'assets/icons/Group 46.png',
      'assets/icons/Group 47.png',
      'assets/icons/Group 48.png',
      'assets/icons/Group 49.png',
      'assets/icons/Group 50.png',
      'assets/icons/Group 51.png',
      'assets/icons/Group 52.png',
      'assets/icons/Group 53.png',
      'assets/icons/Group 54.png',
      'assets/icons/Group 55.png',
    ],
    'black': [
      'assets/icons/Group 56.png',
      'assets/icons/Group 57.png',
      'assets/icons/Group 58.png',
      'assets/icons/Group 59.png',
      'assets/icons/Group 60.png',
      'assets/icons/Group 61.png',
      'assets/icons/Group 62.png',
      'assets/icons/Group 63.png',
      'assets/icons/Group 64.png',
      'assets/icons/Group 65.png',
      'assets/icons/Group 66.png',
      'assets/icons/Group 67.png',
    ],
  };

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Get the initial avatar path from the arguments passed by CreateProfilePage
    initialAvatarPath =
        ModalRoute.of(context)?.settings.arguments as String? ?? '';
    selectedVariant = _getSelectedVariantFromAvatarPath(initialAvatarPath);
  }

  String _getSelectedVariantFromAvatarPath(String avatarPath) {
    // Logic to extract the variant from the avatar path
    // Assuming the path format is 'assets/icons/Group <number>.png'
    if (avatarPath.contains('green')) {
      return 'green';
    } else if (avatarPath.contains('yellow')) {
      return 'yellow';
    } else if (avatarPath.contains('black')) {
      return 'black';
    } else {
      return 'green'; // Default variant if path does not match any
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.03,
          ),
          child: Column(
            children: [
              const CustomAppbar(
                title: "Select Avatar",
                router: "/create-profile-page",
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Expanded(
                child: GridView.count(
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: width * 0.03,
                  mainAxisSpacing: height * 0.025,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: imageLists[selectedVariant]?.map((imagePath) {
                        return GestureDetector(
                          onTap: () {
                            _selectAvatar(imagePath);
                          },
                          child: Image.asset(imagePath),
                        );
                      }).toList() ??
                      [],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.015,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(48),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 4,
                      offset: const Offset(
                          0, 3), // Adjust the position of the shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Choose Variant",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedVariant = 'green';
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.035,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedVariant = 'yellow';
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.yellow.shade600,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.035,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedVariant = 'black';
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                      ],
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

  void _selectAvatar(String avatarPath) {
    Navigator.pop(context,
        avatarPath); // Return the selected avatar path to CreateProfilePage
  }
}
