import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension AppSizer on int {
  double get h {
    final context = Get.context;
    if (context != null) {
      return (MediaQuery.of(context).size.height * (this / 1513)).toDouble();
    } else {
      // Handle the case when context is null
      return this.toDouble(); // or some default value
    }
  }

  double get w {
    final context = Get.context;
    if (context != null) {
      return (MediaQuery.of(context).size.width * (this / 1296)).toDouble();
    } else {
      // Handle the case when context is null
      return this.toDouble(); // or some default value
    }
  }
}
