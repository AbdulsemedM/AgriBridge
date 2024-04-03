// import 'package:agri_bridge/app/utils/app_theme.dart';
import 'package:agri_bridge/app/app_button.dart';
import 'package:agri_bridge/app/app_theme.dart';
import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/app/utils/assets.dart';
import 'package:agri_bridge/feature/dashboard/dashboard_page.dart';
import 'package:agri_bridge/feature/signup/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscurePassword = true;
  var loading = false;
  @override
  Widget build(BuildContext context) {
    // ThemeData themeData = Theme.of(context);
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: sHeight * 0.05,
          ),
          Center(
            child: SizedBox(
              height: sHeight * 0.3,
              child: const Image(image: AssetImage(Assets.logo)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Sign in to your account",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
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
                    myBorder: false,
                    pIconData: Icons.phone_android,
                    hintText: 'eg: 0987654321',
                  ),
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
                  obscureText: obscurePassword,
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
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: IconButton(
                          icon: Icon(obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
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
                SizedBox(
                  height: sHeight * 0.04,
                ),
                MyButton(
                  height: sHeight * 0.055,
                  width: sWidth,
                  backgroundColor: loading
                      ? AppColors.iconColor
                      : AppColors.primaryDarkColor,
                  onPressed: loading
                      ? () {}
                      : () async {
                          // onPressed callback implementation
                          setState(() {
                            loading = !loading;
                            // loading = false;
                          });
                          await Future.delayed(const Duration(seconds: 4));
                          setState(() {
                            loading = false;
                            // loading = false;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DashboardPage()));
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
                      : const Text("Login"),
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
                "Don't have an account?  ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signup()));
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      color: AppColors.primaryDarkColor,
                      fontSize: sWidth * 0.04,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          )
        ],
      ))),
    );
  }
}
