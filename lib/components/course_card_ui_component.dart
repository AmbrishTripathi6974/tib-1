import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../splash_screen/screens/splash_screen.dart';

class CourseCardComponent extends StatelessWidget {
  final String name;
  final String image;
  const CourseCardComponent(
      {super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) {
              return SplashScreen();
            }),
          ),
        );
        debugPrint('course pressed');
      },
      child: Container(
        alignment: Alignment.center,
        height: height * 0.6,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 4,
              blurStyle: BlurStyle.normal,
              offset: Offset(2, 6),
            )
          ],
          borderRadius: BorderRadius.circular(20),
          gradient: const RadialGradient(colors: [
            // Colors.amber,
            Color(0xff09203f),
            Color(0xff537895),
          ]),
        ),
        child: GestureDetector(
          onTap: () {
            // print('Hello');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: SvgPicture.asset(
                  image,
                  width: height * 0.24,
                  // fit: BoxFit.cover,
                ),
                // ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffffc3a0),
                        Color(0xffffafbd),
                      ],
                    ),
                  ),
                  child: FittedBox(
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.clip,
                        shadows: [
                          Shadow(color: Colors.black),
                          Shadow(color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
