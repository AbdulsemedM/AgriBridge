import 'package:agri_bridge/app/app_button.dart';
import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/app/app_theme.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool obscurePassword1 = true;
  bool obscurePassword2 = true;
  final GlobalKey<FormState> myKey = GlobalKey();
  var loading = false;
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: sHeight * 0.05,
            ),
            Center(
              child: Text(
                "Create your account",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Form(
                key: myKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Full Name",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        // controller: myProductUnitPrice,
                        keyboardType: TextInputType.name,
                        decoration: AppDecorations.getAppInputDecoration(
                            // pIconData: Icons.phone_android,
                            hintText: 'eg: Abdu Abdi',
                            myBorder: false),
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return 'Full name is required';
                          }
                          return null;
                        },
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Phone Number",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        // controller: myProductUnitPrice,
                        keyboardType: TextInputType.number,
                        decoration: AppDecorations.getAppInputDecoration(
                            // pIconData: Icons.phone_android,
                            hintText: 'eg: 0987654321',
                            myBorder: false),
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return 'Phone number is required';
                          }
                          return null;
                        },
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Password",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        // controller: myProductUnitPrice,
                        obscureText: obscurePassword1,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.greyColor,
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: "******",
                          prefixIconColor: AppColors.iconColor,
                          suffixIconColor: AppColors.iconColor,
                          prefixIcon: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Icon(Icons.lock),
                          ),
                          suffixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: IconButton(
                                icon: Icon(obscurePassword1
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    obscurePassword1 = !obscurePassword1;
                                  });
                                },
                              )),
                          contentPadding: EdgeInsets.symmetric(vertical: 16),
                        ),
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return 'Password is required';
                          } else if (value!.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Confirm Password",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        // controller: myProductUnitPrice,
                        obscureText: obscurePassword2,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.greyColor,
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: "******",
                          prefixIconColor: AppColors.iconColor,
                          suffixIconColor: AppColors.iconColor,
                          prefixIcon: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Icon(Icons.lock),
                          ),
                          suffixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: IconButton(
                                icon: Icon(obscurePassword2
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    obscurePassword2 = !obscurePassword2;
                                  });
                                },
                              )),
                          contentPadding: EdgeInsets.symmetric(vertical: 16),
                        ),
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return 'Confirm password is required';
                          } else if (value != "password") {
                            return "Password doesn't much";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: sHeight * 0.04,
                      ),
                      MyButton(
                        height: sHeight * 0.055,
                        width: sWidth,
                        backgroundColor: loading
                            ? AppColors.iconColor
                            : AppColors.primaryDarkColor,
                        onPressed: () {
                          // onPressed callback implementation
                          setState(() {
                            loading = !loading;
                          });
                        },
                        buttonText: loading
                            ? SizedBox(
                                height: sHeight * 0.02,
                                width: sHeight * 0.02,
                                child: const CircularProgressIndicator(
                                  strokeWidth: 3,
                                  color: AppColors.primaryColor,
                                ),
                              )
                            : const Text("Signup"),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: sHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do you have an account?  ",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: sWidth * 0.04,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryDarkColor),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
