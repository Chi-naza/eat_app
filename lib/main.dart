// import 'package:device_preview/device_preview.dart';
import 'package:eat_app/constants/app_colors.dart';
import 'package:eat_app/screens/dashboard_screen.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MyApp(),
    // DevicePreview(
    //   enabled: kDebugMode,
    //   builder: (context) => const MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: const EatDashboardScreen(),
    );
  }
}
