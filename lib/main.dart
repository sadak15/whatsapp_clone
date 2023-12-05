import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';
import 'package:whatsapp_clone/screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone/screens/web_screen_layout.dart';

void main() {
  runApp( MaterialApp(
    
    title: 'whatsapp UI',
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor,
    ),
    debugShowCheckedModeBanner: false,
    home:  const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),),
  ));
}
