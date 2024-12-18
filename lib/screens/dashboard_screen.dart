import 'package:eat_app/constants/app_colors.dart';
import 'package:eat_app/constants/app_svgs.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primaryColor,
                  ),
                  Text("Guest Book"),
                ],
              ),
              SizedBox(height: 20),
              Container(
                color: AppColors.appWhite,
                child: Column(
                  children: [
                    SvgPicture.asset(AppSvgs.guestBookSvg),
                    Text(
                        "The guest book feature remembers your guests' dietary needs, allergies, and favorite dishes. "
                        "It organizes dining preferences for a customized and memorable experience, "
                        "ensuring each visit is tailored to their individual needs."),
                  ],
                ),
              ),
              SizedBox(height: 25),
              // Tabs
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.appWhite,
                ),
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: 05),
                  dividerHeight: 0,
                  controller: _tabController,
                  tabs: _tabs.map((tab) {
                    return Container(
                      height: 26,
                      width: 45,
                      child: Text(tab),
                    );
                  }).toList(),
                  indicator:
                      const BoxDecoration(), // Remove the default indicator
                ),
              ),
              // Tab Body
              Container(
                width: double.maxFinite,
                height: 700,
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

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hello"),
        ],
      ),
    );
  }
}
