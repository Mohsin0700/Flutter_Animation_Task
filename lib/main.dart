import 'package:animations/shared/app_constant.dart';
import 'package:animations/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Animation",
      theme: AppTheme.lightTheme,
      home: const Homepage(),
    );
  }
}
