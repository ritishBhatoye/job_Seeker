import 'package:flutter/material.dart';
import 'package:job_seeker/Screen/bottomNavBar.dart';
import 'package:job_seeker/Screen/home.dart';
import 'package:job_seeker/widgets/lineChart.dart';

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
      title: "Job Seeker UI",
      home: BottomNavBar(),
    );
  }
}

//  LineChartWidget()
