import 'package:agri_bridge/app/app_button.dart';
import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/app/app_theme.dart';
import 'package:flutter/material.dart';

class InsuranceInfo extends StatefulWidget {
  const InsuranceInfo({super.key});

  @override
  State<InsuranceInfo> createState() => _InsuranceInfoState();
}

class _InsuranceInfoState extends State<InsuranceInfo> {
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Insurance Info",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
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
                            lableText: "Crop Insurance", myBorder: true),
                        items: [
                          DropdownMenuItem<String>(
                            value: "MALE",
                            child: Center(
                              child: Text(
                                'Yes',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "FEMALE",
                            child: Center(
                              child: Text(
                                'No',
                                style: Theme.of(context).textTheme.displaySmall,
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
                            lableText: "Insurance Provider", myBorder: true),
                        items: [
                          DropdownMenuItem<String>(
                            value: "Married",
                            child: Center(
                              child: Text(
                                'Married',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "Single",
                            child: Center(
                              child: Text(
                                'Single',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "Widowed",
                            child: Center(
                              child: Text(
                                'Widowed',
                                style: Theme.of(context).textTheme.displaySmall,
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
                            lableText: "Insurance Coverage", myBorder: true),
                        items: [
                          DropdownMenuItem<String>(
                            value: "MALE",
                            child: Center(
                              child: Text(
                                'Yes',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "FEMALE",
                            child: Center(
                              child: Text(
                                'No',
                                style: Theme.of(context).textTheme.displaySmall,
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
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          // validator: _validateField,
                          // controller: interestRateController,
                          decoration: AppDecorations.getAppInputDecoration(
                              // pIconData: Icons.phone_android,
                              lableText: "Insurance Amount",
                              hintText: "In ETB",
                              myBorder: true),
                        ),
                      ),
                    ),
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
          ))
        ]),
      ),
    );
  }
}
