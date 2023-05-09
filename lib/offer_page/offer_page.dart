import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tib/components/app_bar.dart';
import 'package:tib/components/copyright_widget.dart';
import 'package:tib/constants/styles.dart';

import 'data.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBarWidget(width),
      body: ListView(
        children: [
          Column(
            children: [
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    children: [
                      const Text.rich(
                        TextSpan(
                          text:
                              'Hey guys, refer The Intern Bay to friends and ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: 'win rewards',
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // List.generate(rewards.length, ),
                      ...List.generate(
                        rewards.length,
                        (int index) => Row(
                          children: [
                            SvgPicture.asset(
                              rewards[index]['image'],
                              height: 70,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                rewards[index]['data'],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/referral_image.svg',
                        fit: BoxFit.fill,
                        height: height * 0.4,
                        width: double.maxFinite,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'How does it work ?',
                  style: headingStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                ...List.generate(
                  rewards.length,
                  (int index) => Row(
                    children: [
                      Image.asset(
                        howDoesItWork[index]['image'],
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              howDoesItWork[index]['heading'],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              howDoesItWork[index]['description'],
                              style: const TextStyle(fontSize: 15),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'Special Rewards',
                  style: headingStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                ...List.generate(
                  goodies.length,
                  (int index) => Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue.shade200,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Image.asset(
                          goodies[index]['image'],
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                goodies[index]['heading'],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 12),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    borderRadius: BorderRadius.circular(60)),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.lock_outline_rounded,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    Text(
                                      goodies[index]['level'],
                                      style: const TextStyle(fontSize: 15),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          copyright,
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.lineTo(0, h * 1);
    path.lineTo(w, h * 0.86);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
