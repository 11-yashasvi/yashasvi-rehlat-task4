import 'package:flutter/material.dart';
import 'package:flutter_task4/screens/page_view.dart';
//import 'package:flutter_task4/screens/video_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  const PageViewDemo();
  }
}