import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/app/utils/draw_circle.dart';
import 'package:agri_bridge/feature/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  List<Icon> myIcons = const [
    Icon(
      Icons.window_rounded,
      color: AppColors.bg1,
    ),
    Icon(
      Icons.newspaper,
      color: AppColors.bg1,
    ),
    Icon(
      FontAwesomeIcons.shop,
      color: AppColors.bg1,
    ),
    Icon(
      FontAwesomeIcons.clipboard,
      color: AppColors.bg1,
    ),
  ];
  List<String> status = [
    'Application',
    'Loans',
    'Bids',
    'Farm Area',
  ];
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: sHeight,
            width: sWidth,
            child: Stack(children: [
              Container(
                height: sHeight * 0.32,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20),
                          child: GestureDetector(
                            onTap: () {
                              DashboardPage.changeIndex(context, 2);
                            },
                            child: const Icon(
                              Icons.notifications_active_outlined,
                              color: AppColors.bg1,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CircularPercentageWidget(
                            percentage: 75, // Example percentage
                            color: AppColors.secondaryColor, // Example color
                            text: '75%', // Example text
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Profile Completion",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: sHeight * 0.3,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
                    child: Container(
                        width: sWidth,
                        height: sHeight, // Adjust height as needed
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: LayoutBuilder(builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return SizedBox(
                            height: sHeight * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 12),
                              child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: sHeight > 896 ? 2 : 1,
                                  crossAxisCount:
                                      2, // Number of columns in the grid
                                  crossAxisSpacing:
                                      2.0, // Spacing between columns
                                  mainAxisSpacing: 0, // Spacing between rows
                                ),
                                itemCount: status
                                    .length, // Number of items in the grid
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 8),
                                    child: GestureDetector(
                                      // onTap: () {
                                      //   switch (status[index].toLowerCase()) {
                                      //     case 'customized reports':
                                      //       Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   ReportsDashboard()));
                                      //     case 'sales overview':
                                      //       Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   SalesOverview()));
                                      //     case 'marketing':
                                      //       Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   TopSeller()));
                                      //     case 'store management':
                                      //       Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   StoreManagement()));
                                      //     case 'stoke management':
                                      //       Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   DashboardProducts()));
                                      //     case 'sales persons':
                                      //       Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   SalesPersons()));
                                      //     case 'special orders':
                                      //       Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   SpecialOrders()));
                                      //     case 'finance management':
                                      //       Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //               builder: (context) =>
                                      //                   OverallReportsDashboard()));
                                      //   }
                                      // },
                                      child: Container(
                                        height: sHeight * 0.05,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.3),
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                            // border: Border.all(
                                            //     color: AppColors
                                            //         .secondaryTextColor),
                                            color: AppColors.bg1,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 7.0),
                                                  child: CircleAvatar(
                                                    radius: sWidth * 0.1,
                                                    backgroundColor: AppColors
                                                        .primaryDarkColor,
                                                    child: Center(
                                                      child: myIcons[index],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 3.0,
                                                      horizontal: 3),
                                              child: Text(
                                                status[index],
                                                style: TextStyle(
                                                    fontSize: sWidth * 0.04,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        )),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        })),
                  ))
            ]),
          ),
        ],
      ),
    ));
  }
}
