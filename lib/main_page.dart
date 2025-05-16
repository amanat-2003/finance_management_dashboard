// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finance_management_dashboard/widgets/bar_graph.dart';
import 'package:finance_management_dashboard/widgets/overview_cards.dart';
import 'package:flutter/material.dart';

import 'package:finance_management_dashboard/utils/app_colors.dart';
import 'package:finance_management_dashboard/widgets/left_drawer.dart';
import 'package:finance_management_dashboard/widgets/nav_bar.dart';

import 'package:finance_management_dashboard/widgets/text_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double widthFactor;

  double w(double dim) {
    return dim * widthFactor;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    widthFactor = screenWidth / 1440;
    debugPrint(widthFactor.toString());

    return Scaffold(
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: LeftDrawer(w),
          ),
          const VerticalDivider(
            width: 1,
            color: AppColors.dividerColor,
          ),
          Flexible(
            flex: 4,
            child: Column(
              children: [
                NavBar(w),
                const Divider(
                  height: 1,
                  color: AppColors.dividerColor,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 40,
                    ),
                    color: AppColors.backgroundGreyColor,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText(
                            'Overview',
                            size: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          const SizedBox(
                            height: 30,
                            width: double.maxFinite,
                          ),
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: OverviewCards(),
                          ),
                          const SizedBox(height: 20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 670,
                                  height: 400,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteCardColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const AppText(
                                            'Statistics',
                                            size: 18,
                                            color: Colors.black,
                                          ),
                                          Row(
                                            children: [
                                              const CircleAvatar(
                                                backgroundColor:
                                                    AppColors.blueColor,
                                                radius: 7,
                                              ),
                                              const SizedBox(width: 5),
                                              const AppText(
                                                'Earnings',
                                                size: 12,
                                              ),
                                              const SizedBox(width: 10),
                                              const CircleAvatar(
                                                backgroundColor:
                                                    AppColors.lightBlueColor,
                                                radius: 7,
                                              ),
                                              const SizedBox(width: 5),
                                              const AppText(
                                                'Spendings',
                                                size: 12,
                                              ),
                                              const SizedBox(width: 25),
                                              Container(
                                                height: 35,
                                                decoration: BoxDecoration(
                                                  color: AppColors
                                                      .backgroundGreyColor,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      AppText(
                                                        'Yearly',
                                                        color: Colors.black,
                                                        size: 11,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Icon(Icons
                                                          .keyboard_arrow_down_rounded),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const SizedBox(
                                          width: 670,
                                          height: 300,
                                          child: BarGraph()),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Container(
                                  width: 410,
                                  height: 370,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteCardColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
