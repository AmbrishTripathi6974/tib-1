import 'package:flutter/material.dart';

import '../../components/app_bar.dart';
import '../../components/copyright_widget.dart';
import '../../constants/styles.dart';
import '../models/about_us_model.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBarWidget(width),
      body: ListView(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.lightBlue.shade100,
                  width: double.maxFinite,
                  height: height * 0.4,
                ),
              ),
              Positioned(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: List.generate(
                      aboutUsModel.length,
                      (index) => Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.lightBlue.shade100,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  aboutUsModel[index]['title'],
                                  style: headingStyle,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  // 'We offers advanced technical training to unlock your potential. Our online courses are cutting-edge and designed to equip you with the skills you need to succeed. Join us today!',
                                  aboutUsModel[index]['description'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // ),
              //   ],
              // ),
              // copyright,
            ],
          ),
          copyright
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // double w = size.width;
    // double h = size.height;
    // final path = Path();
    // // path.lineTo(0, 0);
    // path.lineTo(0, h);
    // path.quadraticBezierTo(w * 0.5, h - 200, w, h);
    // // path.lineTo(w, h);
    // path.lineTo(w, 0);
    // path.close();
    // return path;
    // throw UnimplementedError();
    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1638889, size.height * -0.2082221);
    path_1.lineTo(size.width * -0.4280430, size.height * 0.5438395);
    path_1.lineTo(size.width * 0.8361111, size.height * 0.8586616);
    path_1.lineTo(size.width * 1.428043, size.height * 0.1065999);
    path_1.close();
    path_1.moveTo(size.width * 0.1638889, size.height * -0.2082221);
    return path_1;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
    // throw UnimplementedError();`
  }
}
