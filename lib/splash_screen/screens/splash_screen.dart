import 'package:flutter/material.dart';

import '../../home_screen/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 100),
      // () => Get.offNamed(Routes.homeScreen),
      // () => Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (context) {
      //       return HomeScreen();
      //     },
      //   ),
      // () => Navigator.of(context).pushReplacementNamed('/homeScreen'),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: ((context) {
            return HomeScreen();
          }),
        ),
      ),
      // ),
    );
    super.initState();
  }
  // final controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child:
            //  Hero(
            //   tag: 'logo',
            //   child:
            Image.asset(
          'assets/icons/the_intern_bay_logo.png',
        ),
      ),
      // ),
    );
  }
}
