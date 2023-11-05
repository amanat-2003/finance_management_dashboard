import 'package:finance_management_dashboard/main_page.dart';
import 'package:finance_management_dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: AppColors.lightColorScheme,
  textTheme: GoogleFonts.outfitTextTheme(),
  // textTheme: GoogleFonts.latoTextTheme(),
  // textTheme: GoogleFonts.oswaldTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Demo App',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

