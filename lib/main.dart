import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:split_bill/view/screens/home_page/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: NeumorphicThemeData(
        baseColor: Color(0xFFECF0F3),
        accentColor: Colors.deepPurple,
      ),
      themeMode: ThemeMode.light,
      home: HomePage(),
    );
  }
}

