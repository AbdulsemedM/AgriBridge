import 'package:agri_bridge/app/app_button.dart';
import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/app/app_theme.dart';
import 'package:flutter/material.dart';

class BankInfo extends StatefulWidget {
  const BankInfo({super.key});

  @override
  State<BankInfo> createState() => _BankInfoState();
}

class _BankInfoState extends State<BankInfo> {
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Bank Info",
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
                              lableText: "Bank", myBorder: true),
                          items: [
                            DropdownMenuItem<String>(
                              value: "MALE",
                              child: Center(
                                child: Text(
                                  'Male',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "FEMALE",
                              child: Center(
                                child: Text(
                                  'Female',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
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
                              lableText: "Account Type", myBorder: true),
                          items: [
                            DropdownMenuItem<String>(
                              value: "Married",
                              child: Center(
                                child: Text(
                                  'Married',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "Single",
                              child: Center(
                                child: Text(
                                  'Single',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "Widowed",
                              child: Center(
                                child: Text(
                                  'Widowed',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
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
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            // validator: _validateField,
                            // controller: interestRateController,
                            decoration: AppDecorations.getAppInputDecoration(
                                // pIconData: Icons.phone_android,
                                lableText: "Account Number",
                                // hintText: "in years",
                                myBorder: true),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width:
                            1.0, // Adjust this value as needed for the gap between the widgets
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: DropdownButtonFormField<String>(
                          decoration: AppDecorations.getAppInputDecoration(
                              lableText: 'Distance from bank', myBorder: true),
                          items: [
                            DropdownMenuItem<String>(
                              value: "MALE",
                              child: Center(
                                child: Text(
                                  'Primary School',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "Secondary School",
                              child: Center(
                                child: Text(
                                  'Secondary School',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "Preparatory School",
                              child: Center(
                                child: Text(
                                  'Preparatory School',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "Deploma Certificate",
                              child: Center(
                                child: Text(
                                  'Deploma Certificate',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "Bachelor Degree",
                              child: Center(
                                child: Text(
                                  'Bachelor Degree',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "Masters Degree",
                              child: Center(
                                child: Text(
                                  'Masters Degree',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "Professor",
                              child: Center(
                                child: Text(
                                  'Professor',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
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
                      const SizedBox(
                        width:
                            1.0, // Adjust this value as needed for the gap between the widgets
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
          ],
        ),
      ),
    );
  }
}
