import 'package:agri_bridge/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static void setAndroidStatusColors() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white, // navigation bar color
        statusBarColor: Colors.white, // status bar color
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark));
  }

  static ThemeData themeData() {
    return ThemeData(
        primaryColor: AppColors.primaryDarkColor,
        appBarTheme: appBarTheme(),
        scaffoldBackgroundColor: AppColors.bgColor,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(
            color: AppColors.primaryTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
          displayMedium: GoogleFonts.roboto(
            color: AppColors.primaryTextColor,
            fontSize: 20,
          ),
          displaySmall: GoogleFonts.poppins(
            color: AppColors.primaryTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: GoogleFonts.roboto(
            color: AppColors.primaryTextColor,
            fontSize: 16,
          ),
          bodyMedium: GoogleFonts.roboto(
            color: AppColors.secondaryTextColor,
            fontSize: 14,
          ),
          headlineLarge: GoogleFonts.roboto(
            color: AppColors.bgColor,
            fontSize: 20,
          ),
          headlineMedium: GoogleFonts.patrickHand(
            color: AppColors.bgColor,
            fontSize: 26,
          ),
          headlineSmall: GoogleFonts.roboto(
            color: AppColors.bgColor,
            fontSize: 20,
          ),
        ),
        inputDecorationTheme: inputDecorationTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity);
  }

  static AppBarTheme appBarTheme() {
    return AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: textStyle(),
        toolbarTextStyle: textStyle(),
        systemOverlayStyle: SystemUiOverlayStyle.dark);
  }

  static TextStyle textStyle() {
    return GoogleFonts.roboto(
      color: AppColors.primaryTextColor,
      fontSize: 14,
    );
  }

  static InputDecorationTheme inputDecorationTheme() {
    const outlineInputBorder = OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.fieldBorder), gapPadding: 6);

    final focusedOutlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
      gapPadding: 10,
    );

    return InputDecorationTheme(
      focusColor: AppColors.primaryColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      enabledBorder: outlineInputBorder,
      border: outlineInputBorder,
      labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
      hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
      focusedBorder: focusedOutlineInputBorder,
      errorBorder: outlineInputBorder,
    );
  }

  static AppBar buildAuthAppBar(
      BuildContext context, String actionText, VoidCallback onActionClicked) {
    return AppBar(
      leading: BackButton(
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        TextButton(
            onPressed: onActionClicked,
            child: Text(
              actionText,
              style: const TextStyle(
                fontSize: 18,
                color: AppColors.secondaryTextColor,
              ),
            ))
      ],
    );
  }
}

class AppInput {
  static InputDecoration inputDecoration(
      {String? labelText,
      String? hintText,
      required BuildContext context,
      Icon? prefixIcon}) {
    // const outlineInputBorder = OutlineInputBorder(
    //   borderSide: BorderSide(color: AppColors.fieldBorder),
    //   gapPadding: 6,
    // );

    // final focusedOutlineInputBorder = OutlineInputBorder(
    //   borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
    //   gapPadding: 10,
    // );

    return InputDecoration(
      prefix: prefixIcon,
      hintStyle: Theme.of(context).textTheme.bodyLarge,
      labelText: labelText,
      hintText: hintText,
      border: InputBorder.none,
      filled: true,
      fillColor: AppColors.greyColor,
      // enabledBorder: outlineInputBorder,
      // focusedBorder: focusedOutlineInputBorder,
      // errorBorder: outlineInputBorder,
      // errorStyle: TextStyle(color: Colors.red),
      // Add any other properties you want to customize
    );
  }
}

class AppDecorations {
  static InputDecoration getAppInputDecoration({
    IconData? sIconData,
    IconData? pIconData,
    String? hintText,
    String? lableText,
    required bool myBorder,
  }) {
    return InputDecoration(
      filled: true,
      fillColor: AppColors.greyColor,
      // focusedBorder: InputBorder.none,
      enabledBorder: myBorder
          ? const OutlineInputBorder(
              borderSide:
                  BorderSide(width: 2.0, color: AppColors.primaryDarkColor))
          : InputBorder.none,
      focusedBorder: myBorder
          ? const OutlineInputBorder(
              borderSide:
                  BorderSide(width: 2.0, color: AppColors.primaryDarkColor))
          : InputBorder.none,
      hintText: hintText,
      labelText: lableText,
      labelStyle: GoogleFonts.roboto(
          color: AppColors.primaryDarkColor,
          fontSize: 16,
          fontWeight: FontWeight.w400),
      prefixIconColor: AppColors.iconColor,
      suffixIconColor: AppColors.iconColor,
      prefixIcon: pIconData != null
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Icon(pIconData),
            )
          : null,
      suffixIcon: sIconData != null
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Icon(sIconData),
            )
          : null,
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
    );
  }
}
