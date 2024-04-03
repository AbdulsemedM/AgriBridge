import 'package:agri_bridge/app/app_button.dart';
import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/app/app_theme.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Contact Info",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: DropdownButtonFormField<String>(
                            decoration: AppDecorations.getAppInputDecoration(
                                lableText: "Region", myBorder: true),
                            items: [
                              DropdownMenuItem<String>(
                                value: "MALE",
                                child: Center(
                                  child: Text(
                                    'Male',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "FEMALE",
                                child: Center(
                                  child: Text(
                                    'Female',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              // setState(() {
                              //   selectedGender = value;
                              // });
                            },
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: DropdownButtonFormField<String>(
                            decoration: AppDecorations.getAppInputDecoration(
                                lableText: "Zone", myBorder: true),
                            items: [
                              DropdownMenuItem<String>(
                                value: "Married",
                                child: Center(
                                  child: Text(
                                    'Married',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "Single",
                                child: Center(
                                  child: Text(
                                    'Single',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "Widowed",
                                child: Center(
                                  child: Text(
                                    'Widowed',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              // setState(() {
                              //   selectedGender = value;
                              // });
                            },
                          ),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: DropdownButtonFormField<String>(
                            decoration: AppDecorations.getAppInputDecoration(
                                lableText: "Woreda", myBorder: true),
                            items: [
                              DropdownMenuItem<String>(
                                value: "MALE",
                                child: Center(
                                  child: Text(
                                    'Male',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "FEMALE",
                                child: Center(
                                  child: Text(
                                    'Female',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              // setState(() {
                              //   selectedGender = value;
                              // });
                            },
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: DropdownButtonFormField<String>(
                            decoration: AppDecorations.getAppInputDecoration(
                                lableText: "Kebele", myBorder: true),
                            items: [
                              DropdownMenuItem<String>(
                                value: "Married",
                                child: Center(
                                  child: Text(
                                    'Married',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "Single",
                                child: Center(
                                  child: Text(
                                    'Single',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "Widowed",
                                child: Center(
                                  child: Text(
                                    'Widowed',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              // setState(() {
                              //   selectedGender = value;
                              // });
                            },
                          ),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: DropdownButtonFormField<String>(
                            decoration: AppDecorations.getAppInputDecoration(
                                lableText: "Name of Union", myBorder: true),
                            items: [
                              DropdownMenuItem<String>(
                                value: "MALE",
                                child: Center(
                                  child: Text(
                                    'Male',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "FEMALE",
                                child: Center(
                                  child: Text(
                                    'Female',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              // setState(() {
                              //   selectedGender = value;
                              // });
                            },
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: DropdownButtonFormField<String>(
                            decoration: AppDecorations.getAppInputDecoration(
                                lableText: "Primary Cooperative",
                                myBorder: true),
                            items: [
                              DropdownMenuItem<String>(
                                value: "Married",
                                child: Center(
                                  child: Text(
                                    'Married',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "Single",
                                child: Center(
                                  child: Text(
                                    'Single',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "Widowed",
                                child: Center(
                                  child: Text(
                                    'Widowed',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              // setState(() {
                              //   selectedGender = value;
                              // });
                            },
                          ),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: DropdownButtonFormField<String>(
                            decoration: AppDecorations.getAppInputDecoration(
                                lableText:
                                    "Position in the Primary Cooperative",
                                myBorder: true),
                            items: [
                              DropdownMenuItem<String>(
                                value: "Married",
                                child: Center(
                                  child: Text(
                                    'Married',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "Single",
                                child: Center(
                                  child: Text(
                                    'Single',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "Widowed",
                                child: Center(
                                  child: Text(
                                    'Widowed',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              // setState(() {
                              //   selectedGender = value;
                              // });
                            },
                          ),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: sHeight * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: MyButton(
                          height: sHeight * 0.05,
                          width: sWidth,
                          backgroundColor: AppColors.primaryDarkColor,
                          onPressed: () {},
                          buttonText: Text("Submit")),
                    ),
                    SizedBox(
                      height: sHeight * 0.1,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
