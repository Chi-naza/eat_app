import 'package:eat_app/constants/app_colors.dart';
import 'package:eat_app/constants/app_images.dart';
import 'package:eat_app/constants/app_svgs.dart';
import 'package:eat_app/constants/styles.dart';
import 'package:eat_app/utilities/size_connfig_extensions.dart';
import 'package:eat_app/widgets/soft_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static final GlobalKey<ScaffoldState> _scaffKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      key: _scaffKey,
      drawer: const Drawer(),
      body: Stack(
        children: [
          SizedBox(height: 50.h),

          // SizedBox(height: 50.h),
          // SIDE BAR MENUs HERE
          Row(
            children: [
              Container(
                width: 60.w,
                height: 1563.h,
                color: AppColors.primaryColor,
                child: Column(
                  children: [
                    SizedBox(height: 60.h),
                    SideBarWidget(
                      svgAssetName: AppSvgs.menuSvg,
                      onTap: () {
                        _scaffKey.currentState!.openDrawer();
                      },
                    ),
                    SideBarWidget(
                      svgAssetName: AppSvgs.eatOsLogoSvg,
                      onTap: () {},
                    ),
                    SideBarWidget(
                      svgAssetName: AppSvgs.newOrderSvg,
                      onTap: () {},
                    ),
                    SideBarWidget(
                      svgAssetName: AppSvgs.whiteWheelSvg,
                      onTap: () {},
                    ),
                    SideBarWidget(
                      svgAssetName: AppSvgs.ticketsSvg,
                      onTap: () {},
                    ),
                    SideBarWidget(
                      svgAssetName: AppSvgs.osWhiteSvg,
                      onTap: () {},
                    ),
                    SideBarWidget(
                      svgAssetName: AppSvgs.chartSvg,
                      onTap: () {},
                    ),
                    SideBarWidget(
                      svgAssetName: AppSvgs.eGroupSvg,
                      isLast: true,
                      onTap: () {},
                    ),
                    Text(
                      "Ver 4.9",
                      style: smallTitleBold.copyWith(
                        color: AppColors.appWhite,
                      ),
                    ),
                    Text(
                      "FL 3.3.6",
                      style: smallTitleBold.copyWith(
                        color: AppColors.appWhite,
                      ),
                    ),
                  ],
                ),
              ),
              // Main Side Bar With Users
              Container(
                width: 260.w,
                height: 1563.h,
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                decoration: const BoxDecoration(
                  color: AppColors.appWhite,
                  boxShadow: [BoxShadow(color: Colors.black)],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 150.h),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.primaryColor,
                          size: 30.h,
                        ),
                        const Text("Settings"),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: AppColors.background,
                        filled: true,
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: hintTextStyle,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.h),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.h),
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: AppColors.primaryColor.withOpacity(0.3),
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic,
                            color: AppColors.primaryColor.withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        SvgPicture.asset(AppSvgs.plusSvg, width: 45.h),
                        SizedBox(width: 10.w),
                        SvgPicture.asset(AppSvgs.uploadSvg, width: 45.h),
                        const Expanded(child: SizedBox()),
                        SoftWrapperWidget(
                          vertPadding: 8.h,
                          horizPadding: 9.w,
                          child: Icon(Icons.sort_by_alpha_sharp, size: 45.h),
                        ),
                      ],
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: double.infinity,
                      ),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(
                                "Lia Thomas",
                                style: smallTitleBold,
                              ),
                              subtitle: Column(
                                children: [
                                  Text(
                                    "lia.thomas516@reddit.com",
                                    style: smallTitleBold,
                                  ),
                                  Text(
                                    "+1 212-456-7890",
                                    style: smallTitleBold,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // TOP APP BAR
          Container(
            height: 60.w,
            width: 1400.w,
            color: AppColors.primaryColor,
            child: Row(
              children: [
                SizedBox(width: 10.w),
                SvgPicture.asset(AppSvgs.menuSvg),
                SizedBox(width: 15.w),
                SvgPicture.asset(AppSvgs.networktSvg),
                SizedBox(width: 20.w),
                Image.asset(
                  AppImages.appBarImage,
                  width: 60.h,
                ),
                SizedBox(width: 10.w),
                Text(
                  "Johnson Francisco",
                  style: smallTitleBold.copyWith(
                    color: AppColors.appWhite,
                    fontSize: 30.h,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  "Clocked in at 09:33 am",
                  style: smallTitleBold.copyWith(
                    color: AppColors.appWhite,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "10:20 AM",
                  style: smallTitleBold.copyWith(
                    color: AppColors.appWhite,
                    fontSize: 30.h,
                  ),
                ),
                SizedBox(width: 35.w),
                SvgPicture.asset(AppSvgs.wifiSvg),
                SizedBox(width: 15.w),
                SvgPicture.asset(AppSvgs.notificationSvg),
                SizedBox(width: 35.w),
              ],
            ),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}

class SideBarWidget extends StatelessWidget {
  final bool isLast;
  final String svgAssetName;
  final VoidCallback? onTap;
  const SideBarWidget({
    super.key,
    this.isLast = false,
    required this.svgAssetName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            SvgPicture.asset(
              svgAssetName,
              width: 60.h,
            ),
            SizedBox(height: 30.h),
            Visibility(
              visible: !isLast,
              child: Column(
                children: [
                  const Divider(color: Colors.black),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
