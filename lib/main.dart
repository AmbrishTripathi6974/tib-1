import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tib/home_screen/screens/home_screen.dart';
import 'package:tib/splash_screen/screens/splash_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // initialRoute: Routes.homeScreen,
      // getPages: [
      //   GetPage(
      //     name: Routes.splashScreen,
      //     transition: Transition.circularReveal,
      //     page: () => SplashScreen(),
      //   ),
      //   GetPage(
      //     name: Routes.homeScreen,
      //     transitionDuration: const Duration(seconds: 2),
      //     transition: Transition.circularReveal,
      //     page: () => HomeScreen(),
      //     // children: [
      //     //   GetPage(
      //     //     name: Routes.courseScreen,
      //     //     // transitionDuration: const Duration(seconds: 2),
      //     //     // transition: Transition.circularReveal,
      //     //     showCupertinoParallax: true,
      //     //     page: () => CourseScreen(),
      //     //   ),
      //     // ],
      //   ),
      //   GetPage(
      //     name: Routes.courseScreen,
      //     transitionDuration: const Duration(seconds: 2),
      //     transition: Transition.circularReveal,
      //     showCupertinoParallax: true,
      //     page: () => CourseScreen(),
      //   ),
      // ],
      // routes: {
      //   '/homeScreen': (context) => HomeScreen(),
      //   '/courses': (context) => CourseScreen(),
      //   '/aboutus': (context) => const AboutUsScreen(),
      // },
      // home: GetPlatform.isWeb ? HomeScreen() : SplashScreen(),
      home: HomeScreen(),
    );
  }
}
