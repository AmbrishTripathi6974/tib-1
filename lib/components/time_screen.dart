import 'package:flutter/material.dart';

import '../constants/styles.dart';
import '../course_page/screens/course_screen.dart';

class TimeScreen extends StatefulWidget {
  final List data;
  const TimeScreen({required this.data, super.key});

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(
        milliseconds: 100,
      ),
      () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return CourseScreen(data: widget.data);
          },
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Redirecting',
          style: headingStyle,
        ),
      ),
    );
  }
}
