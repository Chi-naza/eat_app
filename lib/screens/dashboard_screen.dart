import 'package:eat_app/constants/app_colors.dart';
import 'package:eat_app/constants/app_svgs.dart';
import 'package:eat_app/constants/styles.dart';
import 'package:eat_app/screens/profile_screen.dart';
import 'package:eat_app/utilities/size_connfig_extensions.dart';
import 'package:eat_app/widgets/capsule_box_widget.dart';
import 'package:eat_app/widgets/soft_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EatDashboardScreen extends StatefulWidget {
  const EatDashboardScreen({super.key});

  @override
  State<EatDashboardScreen> createState() => _EatDashboardScreenState();
}

class _EatDashboardScreenState extends State<EatDashboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {}); // Update the state to refresh tabs on selection change
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      drawer: Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30.h),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.primaryColor,
                          size: 30.h,
                        ),
                        const Text("Guest Book"),
                      ],
                    ),
                    SizedBox(height: 50.h),
                    SoftWrapperWidget(
                      color: AppColors.appWhite,
                      child: Column(
                        children: [
                          SvgPicture.asset(AppSvgs.guestBookSvg),
                          SizedBox(height: 20.h),
                          Text(
                            "The guest book feature remembers your guests' dietary needs, allergies, and favorite dishes. "
                            "It organizes dining preferences for a customized and memorable experience, "
                            "ensuring each visit is tailored to their individual needs.",
                            textAlign: TextAlign.center,
                            style: mediumTextStyle.copyWith(
                                fontWeight: FontWeight.w500, fontSize: 35.h),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                // Tabs
                Container(
                  width: 820.w,
                  padding: EdgeInsets.all(18.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.h),
                    color: AppColors.appWhite,
                  ),
                  child: TabBar(
                    labelPadding: EdgeInsets.symmetric(horizontal: 05),
                    dividerHeight: 0,
                    controller: _tabController,
                    tabs: _tabs.map((tab) {
                      return CapsuleBoxWidget(
                        text: tab,
                        isSelected: _tabController.index == _tabs.indexOf(tab),
                      );
                    }).toList(),
                    indicator:
                        const BoxDecoration(), // Remove the default indicator
                  ),
                ),
                // Tab Body
                Container(
                  width: double.maxFinite,
                  height: 1000.h,
                  // color: Colors.red,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      ProfileScreen(),
                      Scaffold(),
                      Scaffold(),
                      Scaffold(),
                      Scaffold(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<String> _tabs = [
    "Profile",
    "Reservation",
    "Payment",
    "Feedback",
    "Order History",
  ];
}
