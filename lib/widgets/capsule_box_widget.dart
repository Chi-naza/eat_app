import 'package:eat_app/constants/app_colors.dart';
import 'package:eat_app/utilities/size_connfig_extensions.dart';
import 'package:flutter/material.dart';

class CapsuleBoxWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Color? color;
  final double? padding;
  final double? fontSize;

  const CapsuleBoxWidget({
    super.key,
    required this.text,
    this.color,
    required this.isSelected,
    this.padding,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 10.h),
      decoration: BoxDecoration(
        color: isSelected ? (color ?? AppColors.lightTabButtonColor) : null,
        borderRadius: BorderRadius.circular(35.h),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? AppColors.appWhite : null,
            fontWeight: FontWeight.w600,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
