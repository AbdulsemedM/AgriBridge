import 'dart:io';

import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/app/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddFarmAreaInfo extends StatefulWidget {
  const AddFarmAreaInfo({super.key});

  @override
  State<AddFarmAreaInfo> createState() => _AddFarmAreaInfoState();
}

class _AddFarmAreaInfoState extends State<AddFarmAreaInfo> {
  File? _imageID;
  int numberOfEdges = 0;
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Add Farm Area",
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
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            // validator: _validateField,
                            // controller: interestRateController,
                            decoration: AppDecorations.getAppInputDecoration(
                                // pIconData: Icons.phone_android,
                                lableText: "Farm Name",
                                myBorder: true),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: DropdownButtonFormField<String>(
                          decoration: AppDecorations.getAppInputDecoration(
                              lableText: "Select Area", myBorder: true),
                          items: [
                            DropdownMenuItem<String>(
                              value: "MALE",
                              child: Center(
                                child: Text(
                                  'Yes',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "FEMALE",
                              child: Center(
                                child: Text(
                                  'No',
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
                              lableText: "Land Ownership", myBorder: true),
                          items: [
                            DropdownMenuItem<String>(
                              value: "MALE",
                              child: Center(
                                child: Text(
                                  'Yes',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "FEMALE",
                              child: Center(
                                child: Text(
                                  'No',
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
                              lableText: "Land Topography", myBorder: true),
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
                            keyboardType: TextInputType.number,
                            // validator: _validateField,
                            // controller: interestRateController,
                            decoration: AppDecorations.getAppInputDecoration(
                                lableText: "Farm Area Size",
                                hintText: "in Hectare",
                                myBorder: true),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: DropdownButtonFormField<String>(
                          decoration: AppDecorations.getAppInputDecoration(
                              lableText: "Land Gradient", myBorder: true),
                          items: [
                            DropdownMenuItem<String>(
                              value: "MALE",
                              child: Center(
                                child: Text(
                                  'Yes',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "FEMALE",
                              child: Center(
                                child: Text(
                                  'No',
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
                            onChanged: (value) {
                              setState(() {
                                numberOfEdges = int.parse(value);
                              });
                            },
                            keyboardType: TextInputType.number,
                            // validator: _validateField,
                            // controller: interestRateController,
                            decoration: AppDecorations.getAppInputDecoration(
                                lableText: "Number of Edges",
                                hintText: "in Hectare",
                                myBorder: true),
                          ),
                        ),
                      ),
                      // Expanded(
                      //     child: Padding(
                      //   padding: const EdgeInsets.all(16),
                      //   child: DropdownButtonFormField<String>(
                      //     decoration: AppDecorations.getAppInputDecoration(
                      //         lableText: "Land Gradient", myBorder: true),
                      //     items: [
                      //       DropdownMenuItem<String>(
                      //         value: "MALE",
                      //         child: Center(
                      //           child: Text(
                      //             'Yes',
                      //             style:
                      //                 Theme.of(context).textTheme.displaySmall,
                      //           ),
                      //         ),
                      //       ),
                      //       DropdownMenuItem<String>(
                      //         value: "FEMALE",
                      //         child: Center(
                      //           child: Text(
                      //             'No',
                      //             style:
                      //                 Theme.of(context).textTheme.displaySmall,
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //     onChanged: (value) {
                      //       // setState(() {
                      //       //   selectedGender = value;
                      //       // });
                      //     },
                      //   ),
                      // )),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Farm Photo",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  _imageID == null
                      ? const Row(
                          children: [
                            SizedBox(child: Text('JPG/PNG images')),
                          ],
                        )
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
                          child: const Icon(Icons.photo),
                        ),
                        const SizedBox(width: 16),
                        FloatingActionButton(
                          backgroundColor: AppColors.primaryDarkColor,
                          onPressed: () => _getImageID(ImageSource.camera),
                          tooltip: 'Take a Photo',
                          child: const Icon(Icons.camera_alt),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sHeight * 0.05,
                  ),
                  SizedBox(
                    height: sHeight * 0.2,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 2,
                        crossAxisCount: 2,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                      ),
                      itemCount: numberOfEdges,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text('Edge ${index + 1}'),
                          onTap: () {
                            // _showCoordinatePickerDialog(index);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
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
