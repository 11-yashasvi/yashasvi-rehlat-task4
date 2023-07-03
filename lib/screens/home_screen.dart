import 'package:flutter/material.dart';
import 'package:flutter_task4/screens/video_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  VideoScreen(btntxt: 'MIDDLE EAST', contenttxt: 'Many holiday goers love Dubai for its pristine white beaches and the unlimited water sports.', filepath: 'assets/images/bg.jpg', maintxt: 'Top 5 Water Sports That Even Non-Swimmers Can Enjoy In Dubai', likecount: "1.3k",);
  }
}