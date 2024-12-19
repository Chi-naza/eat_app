import 'package:eat_app/constants/app_colors.dart';
import 'package:eat_app/utilities/size_connfig_extensions.dart';
import 'package:flutter/material.dart';

class SoftWrapperWidget extends StatelessWidget {
  final double? vertPadding;
  final double? horizPadding;
  final Color? color;
  final Widget child;
  const SoftWrapperWidget(
      {super.key,
      this.vertPadding,
      this.horizPadding,
      required this.child,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: horizPadding == null && vertPadding == null
          ? EdgeInsets.all(30.h)
          : EdgeInsets.symmetric(
              horizontal: horizPadding ?? 0.0, vertical: vertPadding ?? 0.0),
      decoration: BoxDecoration(
        color: color ?? AppColors.background,
        borderRadius: BorderRadius.circular(27.h),
        boxShadow: const [
          BoxShadow(color: Colors.black26),
        ],
      ),
      child: child,
    );
  }
}
