import 'package:flutter/material.dart';
import 'package:widgets_basic/screens/home_screen.dart';
import 'constant/my_constant.dart';
import 'package:widgets_basic/screens/bottomnavbar_sereen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Myconstant.info,
        primaryColor: Myconstant.info,
      ),
      home:const BottomNavVar(),
    );
    
  }
}