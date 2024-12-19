import 'package:eat_app/constants/app_colors.dart';
import 'package:eat_app/constants/app_images.dart';
import 'package:eat_app/constants/app_svgs.dart';
import 'package:eat_app/constants/styles.dart';
import 'package:eat_app/data/online_review_data.dart';
import 'package:eat_app/utilities/size_connfig_extensions.dart';
import 'package:eat_app/widgets/capsule_box_widget.dart';
import 'package:eat_app/widgets/soft_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60.h),
            // Mother Profile row
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              decoration: BoxDecoration(
                  color: AppColors.appWhite,
                  borderRadius: BorderRadius.circular(30.h)),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    SizedBox(width: 10.w),
                    // profile
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          foregroundImage: AssetImage(AppImages.liaThomasImage),
                        ),
                        SizedBox(height: 20.h),
                        Text("Lia Thomas", style: mediumTitleBold),
                        SizedBox(height: 10.h),
                        Text("lia.thomas516@reddit.com",
                            style: mediumTextStyle),
                        SizedBox(height: 10.h),
                        Text("+1 212-450-7890", style: mediumTextStyle),
                        SizedBox(height: 20.h),
                        InkWell(
                          onTap: () {},
                          child: CapsuleBoxWidget(
                            text: "Add Tags",
                            isSelected: true,
                            color: AppColors.primaryColor,
                            padding: 15.h,
                            fontSize: 23.h,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 25.w),
                    VerticalDivider(),
                    SizedBox(width: 15.w),
                    // center column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // "last visit" section
                        SoftWrapperWidget(
                          vertPadding: 45.h,
                          horizPadding: 10.h,
                          child: IntrinsicHeight(
                            child: Row(
                              children: [
                                DoubleTextWidget(
                                  topText: "-- -- --",
                                  bottomText: "Last Visit",
                                ),
                                SizedBox(width: 15.w),
                                VerticalDivider(),
                                SizedBox(width: 15.w),
                                DoubleTextWidget(
                                  topText: "\$0.00",
                                  bottomText: "Average Spend",
                                ),
                                SizedBox(width: 15.w),
                                VerticalDivider(),
                                SizedBox(width: 15.w),
                                DoubleTextWidget(
                                  topText: "\$0.00",
                                  bottomText: "Liftime Spend",
                                ),
                                SizedBox(width: 15.w),
                                VerticalDivider(),
                                SizedBox(width: 15.w),
                                DoubleTextWidget(
                                  topText: "0",
                                  bottomText: "Total Orders",
                                ),
                                SizedBox(width: 15.w),
                                VerticalDivider(),
                                SizedBox(width: 15.w),
                                DoubleTextWidget(
                                  topText: "0",
                                  bottomText: "Average Tip",
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        // "Loyalty No sectionn"
                        Row(
                          children: [
                            SoftWrapperWidget(
                              vertPadding: 5.h,
                              horizPadding: 10.h,
                              child: SizedBox(
                                width: 220.w,
                                child: Column(
                                  children: [
                                    const TextWithHorizTextFieldWidget(
                                        text: "Loyalty No"),
                                    Divider(height: 0.h),
                                    const TextWithHorizTextFieldWidget(
                                        text: "Customer Since"),
                                    Divider(height: 0.h),
                                    TextWithHorizTextFieldWidget(
                                      text: "",
                                      widget: Row(
                                        children: [
                                          Text(
                                            "Birthday",
                                            style: mediumTextStyle,
                                          ),
                                          SizedBox(width: 7.w),
                                          SvgPicture.asset(AppSvgs.birthdaySvg)
                                        ],
                                      ),
                                    ),
                                    Divider(height: 0.h),
                                    TextWithHorizTextFieldWidget(
                                      text: "",
                                      widget: Row(
                                        children: [
                                          Text(
                                            "Anniversary",
                                            style: mediumTextStyle,
                                          ),
                                          SizedBox(width: 7.w),
                                          SvgPicture.asset(
                                              AppSvgs.anniversarySvg)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            // LOYALTY
                            SoftWrapperWidget(
                              vertPadding: 50.h,
                              horizPadding: 10,
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "LOYALTY",
                                      style: TextStyle(
                                          fontSize: 27.h,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 50.h),
                                    const IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          DoubleTextWidget(
                                              topText: "0",
                                              bottomText: "Earned   "),
                                          VerticalDivider(),
                                          DoubleTextWidget(
                                              topText: "0",
                                              bottomText: "Redeemed"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 40.h),
                                    const IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          DoubleTextWidget(
                                              topText: "0",
                                              bottomText: "Available"),
                                          VerticalDivider(),
                                          DoubleTextWidget(
                                              topText: "\$ 00.00",
                                              bottomText: "Amount"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            // VISITS
                            SoftWrapperWidget(
                              vertPadding: 50.h,
                              horizPadding: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "VISITS",
                                    style: TextStyle(
                                        fontSize: 27.h,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 40.h),
                                  const IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        DoubleTextWidget(
                                            topText: "0",
                                            bottomText: "Earned   "),
                                        VerticalDivider(),
                                        DoubleTextWidget(
                                            topText: "0",
                                            bottomText: "Redeemed"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 40.h),
                                  const IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        DoubleTextWidget(
                                            topText: "0",
                                            bottomText: "Available"),
                                        VerticalDivider(),
                                        DoubleTextWidget(
                                            topText: "\$ 00.00",
                                            bottomText: "Amount"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10.w),
                    // last column
                    Column(
                      children: [
                        SoftWrapperWidget(
                          horizPadding: 130.h,
                          vertPadding: 180.h,
                          child: Column(
                            children: [
                              SizedBox(height: 30.h),
                              SvgPicture.asset(AppSvgs.iceCreamSvg),
                              const Text("No Ordered Items"),
                            ],
                          ),
                        ),
                        Expanded(child: Text("")),
                        SoftWrapperWidget(
                          child: Row(
                            children: [
                              SvgPicture.asset(AppSvgs.vehicle),
                              SizedBox(width: 10.w),
                              const Text("No Recent Vehicle to Show"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60.h),
            // ALLERGIES
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 13.w),
                      child: const Text("ALLERGIES"),
                    ),
                    SizedBox(height: 20.h),
                    SoftWrapperWidget(
                      color: AppColors.appWhite,
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            SvgPicture.asset(AppSvgs.cutlerySvg),
                            SizedBox(width: 10.w),
                            VerticalDivider(),
                            SizedBox(width: 10.w),
                            Text("No Allergies", style: smallTitleBold),
                            SizedBox(width: 330.w),
                            InkWell(
                              onTap: () {},
                              child: CapsuleBoxWidget(
                                text: "Add",
                                isSelected: true,
                                color: AppColors.primaryColor,
                                padding: 20.h,
                                fontSize: 23.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 13.w),
                      child: const Text("UPCOMING VISITS"),
                    ),
                    SizedBox(height: 20.h),
                    SoftWrapperWidget(
                      color: AppColors.appWhite,
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            SvgPicture.asset(AppSvgs.bookingDomeSvg),
                            SizedBox(width: 10.w),
                            VerticalDivider(),
                            SizedBox(width: 10.w),
                            Text("No Upcoming Visits", style: smallTitleBold),
                            SizedBox(width: 330.w),
                            InkWell(
                              onTap: () {},
                              child: CapsuleBoxWidget(
                                text: "Book A Visit",
                                isSelected: true,
                                color: AppColors.primaryColor,
                                padding: 20.h,
                                fontSize: 23.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 60.h),
            // NOTES
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13.w),
                  child: const Text("NOTES"),
                ),
                SizedBox(height: 20.h),
                SoftWrapperWidget(
                  color: AppColors.appWhite,
                  child: Column(
                    children: [
                      const NotesCardWidget(
                        text: "General",
                        svgAssetName: AppSvgs.generalSvg,
                      ),
                      Divider(height: 0.h),
                      SizedBox(height: 40.h),
                      const NotesCardWidget(
                        text: "Special Relation",
                        svgAssetName: AppSvgs.specialSvg,
                      ),
                      Divider(height: 0.h),
                      SizedBox(height: 40.h),
                      const NotesCardWidget(
                        text: "Seating Preferences",
                        svgAssetName: AppSvgs.seatingSvg,
                      ),
                      Divider(height: 0.h),
                      SizedBox(height: 40.h),
                      const NotesCardWidget(
                        text: "Special Note",
                        svgAssetName: AppSvgs.specialNoteSvg,
                      ),
                      Divider(height: 0.h),
                      SizedBox(height: 40.h),
                      const NotesCardWidget(
                        text: "Allergies",
                        svgAssetName: AppSvgs.allergiesSvg,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 60.h),
            // RECENT ORDERS
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13.w),
                  child: const Text("RECENT ORDERS"),
                ),
                SizedBox(height: 20.h),
                SoftWrapperWidget(
                  color: AppColors.appWhite,
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        SvgPicture.asset(AppSvgs.recentOrdersSvg),
                        SizedBox(width: 10.w),
                        VerticalDivider(),
                        SizedBox(width: 10.w),
                        Text("No Recent Orders to Show", style: smallTitleBold),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60.h),
            // ONLINE REVIEWS
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13.w),
                  child: const Text("ONLINE REVIEWS"),
                ),
                SizedBox(height: 20.h),
                SoftWrapperWidget(
                  color: AppColors.appWhite,
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        SvgPicture.asset(AppSvgs.noOnlineReview),
                        SizedBox(width: 10.w),
                        VerticalDivider(),
                        SizedBox(width: 10.w),
                        Text("No Online Review to Show", style: smallTitleBold),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60.h),
            // ONLINE REVIEWS (AVAILABLE)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13.w),
                  child: const Text("ONLINE REVIEWS (AVAILABLE)"),
                ),
                SizedBox(height: 20.h),
                SoftWrapperWidget(
                    horizPadding: 45,
                    vertPadding: 50,
                    color: AppColors.appWhite,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          OnlineReviewsWidget(
                            ratingCount: onlineReviewsList[0]["rating"],
                            reviewText: onlineReviewsList[0]["reviewText"],
                            svgAsetName: onlineReviewsList[0]["icon"],
                            isImage: false,
                          ),
                          SizedBox(width: 20.w),
                          OnlineReviewsWidget(
                            ratingCount: onlineReviewsList[1]["rating"],
                            reviewText: onlineReviewsList[1]["reviewText"],
                            svgAsetName: AppImages.redStarImage,
                            isImage: true,
                          ),
                          SizedBox(width: 20.w),
                          OnlineReviewsWidget(
                            ratingCount: onlineReviewsList[2]["rating"],
                            reviewText: onlineReviewsList[2]["reviewText"],
                            svgAsetName: AppImages.redFImage,
                            isImage: true,
                          ),
                          SizedBox(width: 20.w),
                          OnlineReviewsWidget(
                            ratingCount: onlineReviewsList[0]["rating"],
                            reviewText: onlineReviewsList[0]["reviewText"],
                            svgAsetName: onlineReviewsList[0]["icon"],
                            isImage: false,
                          ),
                          SizedBox(width: 20.w),
                          OnlineReviewsWidget(
                            ratingCount: onlineReviewsList[1]["rating"],
                            reviewText: onlineReviewsList[1]["reviewText"],
                            svgAsetName: AppImages.redStarImage,
                            isImage: true,
                          ),
                          SizedBox(width: 20.w),
                          OnlineReviewsWidget(
                            ratingCount: onlineReviewsList[2]["rating"],
                            reviewText: onlineReviewsList[2]["reviewText"],
                            svgAsetName: AppImages.redFImage,
                            isImage: true,
                          ),
                          //  SizedBox(width: 20.w),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(height: 200.h),
          ],
        ),
      ),
    );
  }
}

class OnlineReviewsWidget extends StatelessWidget {
  final double ratingCount;
  final String reviewText;
  final String svgAsetName;
  final bool isImage;

  const OnlineReviewsWidget({
    super.key,
    required this.ratingCount,
    required this.reviewText,
    required this.svgAsetName,
    this.isImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 50.h),
            Container(
              padding: EdgeInsets.all(30.h),
              width: 237.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.h),
                color: AppColors.appWhite,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50.h),
                  RatingBar.builder(
                    initialRating: ratingCount,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 37.h,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    reviewText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: -30,
          bottom: 120.h,
          left: 60.w,
          child: isImage
              ? Image.asset(svgAsetName)
              : SvgPicture.asset(svgAsetName),
        ),
      ],
    );
  }
}

class NotesCardWidget extends StatelessWidget {
  final String text;
  final String svgAssetName;

  const NotesCardWidget({
    super.key,
    required this.text,
    required this.svgAssetName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(svgAssetName),
            SizedBox(width: 10.w),
            Text(
              text,
              style: mediumTextStyle,
            ),
          ],
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Add notes",
            hintStyle: hintTextStyle,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ],
    );
  }
}

class TextWithHorizTextFieldWidget extends StatelessWidget {
  final String text;
  final Widget? widget;
  const TextWithHorizTextFieldWidget({
    super.key,
    required this.text,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget ??
            Text(
              text,
              style: mediumTextStyle,
            ),
        SizedBox(width: 50.w),
        Expanded(
            child: TextFormField(
          textDirection: TextDirection.rtl,
          decoration: const InputDecoration(
            hintText: " Enter",
            hintTextDirection: TextDirection.rtl,
            hintStyle: hintTextStyle,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        )),
      ],
    );
  }
}

class DoubleTextWidget extends StatelessWidget {
  final String topText;
  final String bottomText;
  const DoubleTextWidget({
    super.key,
    required this.topText,
    required this.bottomText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            topText,
            style: smallTitleBold,
          ),
          SizedBox(height: 20.h),
          Text(
            bottomText,
            style: smallTextStyle,
          ),
        ],
      ),
    );
  }
}
