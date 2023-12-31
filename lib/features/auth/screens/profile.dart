import 'package:flutter/material.dart';
import 'package:goaviralnews/common/widgets/custom_elevatedbutton.dart';
import 'package:goaviralnews/features/auth/screens/avatar.dart';
import 'package:goaviralnews/globalVariables.dart';

import 'package:intl/intl.dart';
import '../../../size_config.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({super.key});

  static const String routName = "/create-profile-page";

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  DateTime? _selectedDate;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  String selectedAvatar = "assets/icons/addstory.png"; // Default avatar path
  String name = "Your Name"; // Default name value
  String emailAddress =
      "enter your email address"; // Default email address value
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.03,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  const Text(
                    "Bio-Data",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AvatarPage.routName)
                          .then((selectedImage) {
                        if (selectedImage != null) {
                          setState(() {
                            selectedAvatar = selectedImage as String;
                          });
                        }
                      });
                    },
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              GlobalVariables.primaryIconButtonBorderColor,
                          radius: 40,
                          child: Image.asset(selectedAvatar),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 6,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: GlobalVariables.extraFadedTextColor,
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: GlobalVariables.backgroundColor,
                              size: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        emailAddress,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: GlobalVariables.extraFadedTextColor,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              TextEditingController _emailController =
                                  TextEditingController(text: emailAddress);

                              return AlertDialog(
                                title: const Text('Edit Email Address'),
                                content: TextField(
                                  controller: _emailController,
                                  decoration: const InputDecoration(
                                    hintText: 'Enter your email address',
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Save'),
                                    onPressed: () {
                                      // Save the updated email address and close the dialog
                                      emailAddress = _emailController.text;
                                      // Do something with the new email address, e.g., update it in the database
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: GlobalVariables.extraFadedTextColor,
                          ),
                          height: 18,
                          width: 18,
                          child: const Icon(
                            Icons.edit,
                            color: GlobalVariables.backgroundColor,
                            size: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.045,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "What's your first name?",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your first name';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "And your last name?",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your last name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            hintText: "Select gender",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please select your gender';
                            }
                            return null;
                          },
                          items: <String>['Male', 'Female', 'Other']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            // Do something with the selected value
                          },
                          value: null,
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: "What is your date of birth?",
                            suffixIcon: IconButton(
                              onPressed: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: _selectedDate ?? DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now(),
                                ).then((selectedDate) {
                                  if (selectedDate != null) {
                                    setState(() {
                                      _selectedDate = selectedDate;
                                    });
                                  }
                                });
                              },
                              icon: const Icon(Icons.calendar_today),
                            ),
                          ),
                          controller: TextEditingController(
                            text: _selectedDate != null
                                ? DateFormat('dd-MM-yyyy')
                                    .format(_selectedDate!)
                                : '',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your date of birth';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.12,
              ),
              CustomElevatedButton(
                router: "/routes",
                title: "Update Profile",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // All fields are valid, proceed to the next screen
                    Navigator.pushNamed(
                      context,
                      "/routes",
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
