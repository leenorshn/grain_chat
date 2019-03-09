import 'package:flutter/material.dart';
import 'package:grain_chat/themes/themes.dart';
import 'package:grain_chat/ui/screens/main_page.dart';

void main() => runApp(GrainChat());

class GrainChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: accentColor
      ),
      home: MainPage(),
    );
  }
}
