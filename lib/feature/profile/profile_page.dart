import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/feature/profile_info/bank_info/bank_ifo.dart';
import 'package:agri_bridge/feature/profile_info/contact_info/contact_info.dart';
import 'package:agri_bridge/feature/profile/profile_completion_page.dart';
import 'package:agri_bridge/feature/profile_info/farm_info/farm_info.dart';
import 'package:agri_bridge/feature/profile_info/insurance_info/insurance_info.dart';
import 'package:agri_bridge/feature/profile_info/personal_info/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? step = "";
  String? step2 = "";
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: sHeight * 0.25,
            width: sWidth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.primaryColor, // Start color
                  AppColors.primaryDarkColor, // End color
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20),
                  child: Text(
                    "Hello, Abduse",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Please complete your profile to get full access to the platform",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2500,
              percent: 0.75,
              center: const Text("75.0%"),
              barRadius: const Radius.circular(10),
              progressColor: AppColors.primaryColor,
            ),
          ),
          const Divider(),
          ProfileCompletion(
            // icon: FontAwesomeIcons.circleCheck,
            title: 'Personal Info',
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonalInfo()));
            },
            status: 'Done',
          ),
          const Divider(),
          ProfileCompletion(
            // icon: FontAwesomeIcons.circleCheck,
            title: 'Contact Info',
            onClick: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ContactInfo()));
            },
            status: 'Incomplete',
          ),
          const Divider(),
          ProfileCompletion(
            // icon: FontAwesomeIcons.circleCheck,
            title: 'Bank Info',
            onClick: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BankInfo()));
            },
            status: 'Done',
          ),
          const Divider(),
          ProfileCompletion(
            // icon: FontAwesomeIcons.circleCheck,
            title: 'Insurance Info',
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InsuranceInfo()));
            },
            status: 'Incomplete',
          ),
          const Divider(),
          ProfileCompletion(
            // icon: FontAwesomeIcons.circleCheck,
            title: 'Farm Info',
            onClick: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FarmInfo()));
            },
            status: 'Incomplete',
          ),
          const Divider(),
        ],
      ),
    ));
  }
}
