import 'package:flutter/material.dart';
import 'package:whats_app_responsive/Responsive_Layout/responsive_layout.dart';
import 'package:whats_app_responsive/Screens/mobile_screen_layout.dart';
import 'package:whats_app_responsive/Screens/web_screen_layout.dart';

import 'Widgets/colors.dart';
void main() => runApp(WhatsApp());

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whats App',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor : backgroundColor,
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WEBScreenLayout()),
    );
  }
}
























