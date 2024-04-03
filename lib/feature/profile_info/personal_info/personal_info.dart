import 'dart:io';

import 'package:agri_bridge/app/app_button.dart';
import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/app/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  File? _imageBus;
  File? _imageID;
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: Text(
            "Personal Information",
            style: Theme.of(context).textTheme.displayMedium,
          )),
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
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            // validator: _validateField,
                            // controller: interestRateController,
                            decoration: AppDecorations.getAppInputDecoration(
                                // pIconData: Icons.phone_android,
                                lableText: "Name",
                                myBorder: true),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width:
                            1.0, // Adjust this value as needed for the gap between the widgets
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            // validator: _validateField,
                            // controller: interestRateController,
                            decoration: AppDecorations.getAppInputDecoration(
                                // pIconData: Icons.phone_android,
                                myBorder: true,
                                lableText: 'Father Name'),
                          ),
                        ),
                      ),
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
                                lableText: "Sure Name",
                                myBorder: true),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width:
                            1.0, // Adjust this value as needed for the gap between the widgets
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            // validator: _validateField,
                            // controller: interestRateController,
                            decoration: AppDecorations.getAppInputDecoration(
                                // pIconData: Icons.phone_android,
                                myBorder: true,
                                lableText: 'Age'),
                          ),
                        ),
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
                              lableText: "Gender", myBorder: true),
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
                              lableText: "Marital Status", myBorder: true),
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
                                lableText: "Tin Number",
                                myBorder: true),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width:
                            1.0, // Adjust this value as needed for the gap between the widgets
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            // validator: _validateField,
                            // controller: interestRateController,
                            decoration: AppDecorations.getAppInputDecoration(
                                // pIconData: Icons.phone_android,
                                myBorder: true,
                                lableText: 'Spouse Tin Number'),
                          ),
                        ),
                      ),
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
                                lableText: "Farming Experience",
                                hintText: "in years",
                                myBorder: true),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width:
                            1.0, // Adjust this value as needed for the gap between the widgets
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: DropdownButtonFormField<String>(
                          decoration: AppDecorations.getAppInputDecoration(
                              lableText: "Family Type", myBorder: true),
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
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: DropdownButtonFormField<String>(
                          decoration: AppDecorations.getAppInputDecoration(
                              lableText: 'Educational Status', myBorder: true),
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
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: DropdownButtonFormField<String>(
                          decoration: AppDecorations.getAppInputDecoration(
                              lableText: 'ID Type', myBorder: true),
                          items: [
                            DropdownMenuItem<String>(
                              value: "Kebele ID",
                              child: Center(
                                child: Text(
                                  'Kebele ID',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "Passport",
                              child: Center(
                                child: Text(
                                  'Passport',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "Driver\'s Liscence",
                              child: Center(
                                child: Text(
                                  'Driver\'s Liscence',
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
                  Text("Business Registration image"),
                  _imageBus == null
                      ? SizedBox(child: Text('JPG/PNG images'))
                      : SizedBox(
                          height: sHeight * 0.15,
                          child: Image.file(_imageBus!)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FloatingActionButton(
                          backgroundColor: AppColors.primaryDarkColor,
                          onPressed: () =>
                              _getImageBusiness(ImageSource.gallery),
                          tooltip: 'Pick Image from Gallery',
                          child: Icon(
                            Icons.photo,
                          ),
                        ),
                        SizedBox(width: 16),
                        FloatingActionButton(
                          backgroundColor: AppColors.primaryDarkColor,
                          onPressed: () =>
                              _getImageBusiness(ImageSource.camera),
                          tooltip: 'Take a Photo',
                          child: Icon(Icons.camera_alt),
                        ),
                      ],
                    ),
                  ),
                  Text("ID Photo"),
                  _imageID == null
                      ? SizedBox(child: Text('JPG/PNG images'))
                      : SizedBox(
                          height: sHeight * 0.15, child: Image.file(_imageID!)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FloatingActionButton(
                          backgroundColor: AppColors.primaryDarkColor,
                          onPressed: () => _getImageID(ImageSource.gallery),
                          tooltip: 'Pick Image from Gallery',
                          child: Icon(Icons.photo),
                        ),
                        SizedBox(width: 16),
                        FloatingActionButton(
                          backgroundColor: AppColors.primaryDarkColor,
                          onPressed: () => _getImageID(ImageSource.camera),
                          tooltip: 'Take a Photo',
                          child: Icon(Icons.camera_alt),
                        ),
                      ],
                    ),
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

  Future _getImageBusiness(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    // final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      if (pickedFile != null) {
        if (source == ImageSource.camera) {
          _imageBus = File(pickedFile.path);
          // prefs.setString("myImage", _image!.path);
          // Save the image to the gallery
          // GallerySaver.saveImage(_imageBus!.path).then((success) {
          //   print("Image saved to gallery: $success");
          //   print("hereweare");
          //   print(_imageBus);
          // });
        } else {
          _imageBus = File(pickedFile.path);
          // prefs.setString("myImage", _image!.path);
          print("herewego");
          print(_imageBus);
        }
      } else {
        print('No image selected.');
      }
    });
  }

  Future _getImageID(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    // final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      if (pickedFile != null) {
        if (source == ImageSource.camera) {
          _imageID = File(pickedFile.path);
          // prefs.setString("myImage", _image!.path);
          // Save the image to the gallery
          // GallerySaver.saveImage(_imageID!.path).then((success) {
          //   print("Image saved to gallery: $success");
          //   print("hereweare");
          //   print(_imageID);
          // });
        } else {
          _imageID = File(pickedFile.path);
          // prefs.setString("myImage", _image!.path);
          print("herewego");
          print(_imageID);
        }
      } else {
        print('No image selected.');
      }
    });
  }
}
