import 'package:agri_bridge/app/app_button.dart';
import 'package:agri_bridge/app/app_colors.dart';
import 'package:agri_bridge/feature/profile_info/farm_info/add_farm_area_info.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FarmInfo extends StatefulWidget {
  const FarmInfo({super.key});

  @override
  State<FarmInfo> createState() => _FarmInfoState();
}

class _FarmInfoState extends State<FarmInfo> {
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Farm Info",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: sHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: MyButton(
                      height: sHeight * 0.06,
                      width: sWidth * 0.5,
                      backgroundColor: AppColors.primaryDarkColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddFarmAreaInfo()));
                      },
                      buttonText: Row(
                        children: [
                          Icon(Icons.add),
                          Text(
                            "Add Farm Area",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ],
                      )),
                ),
              ],
            ),
            // SizedBox(
            //   height: sHeight * 0.1,
            // ),
            Column(children: [
              // !loading && myExpenses.isEmpty
              //     ? SizedBox(
              //         height: sHeight * 0.9,
              //         child: Column(
              //           children: [
              //             Center(
              //               child: Center(child: Text('No Expenses found.')),
              //             ),
              //           ],
              //         ),
              //       )
              // : loading && myExpenses.isEmpty
              //     ? Center(
              //         child: CircularProgressIndicator(
              //           color: AppColors.colorPrimaryDark,
              //         ),
              //       )
              // :
              SizedBox(
                height: sHeight * 0.8,
                child: ListView.separated(
                  itemCount: 4,
                  separatorBuilder: (_, __) => const SizedBox(
                    height: 14,
                  ),
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                    // onTap: () async {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: ((context) => MerchantBids(
                    //               specialOrderId: myExpenses[index]
                    //                   .specialOrderId
                    //                   .toString()))));
                    // },
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CachedNetworkImage(
                                imageUrl:
                                    "https://i0.wp.com/mwvvibe.com/wp-content/uploads/2020/07/Farm_watering0072.jpg?resize=1280%2C640&ssl=1",
                                height: 50,
                                width: 50,
                                fit: BoxFit.fill,
                                placeholder: (_, __) => Container(
                                  color: Colors.grey,
                                ),
                                errorWidget: (_, __, ___) => Container(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Farm Area 1",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    "Limu Seka",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "20 Ha",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(),
                              ),
                              Text(
                                "LSK546",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
