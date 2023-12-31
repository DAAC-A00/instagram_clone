import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/responsive/mobile_screen_layout.dart';
import 'package:flutter_clone_instagram/responsive/responsive_layout_screen.dart';
import 'package:flutter_clone_instagram/responsive/web_screen_layout.dart';
import 'package:flutter_clone_instagram/utils/color.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}
