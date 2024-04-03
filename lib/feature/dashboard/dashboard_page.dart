import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/feature/applications/app_page.dart';
import 'package:agri_bridge/feature/home/home_page.dart';
import 'package:agri_bridge/feature/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();

  // Static method to change currentIndex from anywhere
  static void changeIndex(BuildContext context, int index) {
    final _DashboardPageState state =
        context.findAncestorStateOfType<_DashboardPageState>()!;
    state.changeIndex(index);
  }
}

class _DashboardPageState extends State<DashboardPage> {
  var _currentIndex = 0;

  // Method to change currentIndex
  void changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _currentIndex == 0
          ? HomePage()
          : _currentIndex == 1
              ? ApplicationPage()
              // : _currentIndex == 2
              //     ? NewPage()
              : ProfilePage(),
      bottomNavigationBar: SalomonBottomBar(
        selectedItemColor: AppColors.primaryDarkColor,
        backgroundColor: AppColors.bgColor,
        currentIndex: _currentIndex,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
          });
        },
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.now_widgets_outlined),
            title: Text("Applications"),
          ),

          /// Search
          // SalomonBottomBarItem(
          //   icon: Icon(Icons.new_label_outlined),
          //   title: Text("New"),
          // ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
