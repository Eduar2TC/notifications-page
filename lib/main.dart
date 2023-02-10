import 'package:flutter/material.dart';
import 'package:notifications_page/responsive/desktop.dart';
import 'package:notifications_page/responsive/responsive_layout.dart';
import 'package:notifications_page/responsive/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        desktopBody: DesktopBody(),
        mobileBody: MobileBody(),
      ),
    );
  }
}
