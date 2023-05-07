import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../about_us_page/screens/about_us_screen.dart';
import '../../components/app_bar.dart';
import '../../components/course_card.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../utils/colors.dart';
import '../data/homeScreenData.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GlobalKey _containerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // String stashed = ModalRoute.of(context)?.settings.arguments as String;
    // print(stashed);
    return Scaffold(
      appBar: appBarWidget(width),
      body: SizedBox(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipPath(
                      clipper: CustomClipPath(),
                      child: Container(
                        color: Colors.lightBlue.shade100,
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 10),
                        width: double.maxFinite,
                        height: height * 0.8,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 20, left: 20, right: 20, bottom: 10),
                      child: Column(
                        children: [
                          const FittedBox(
                            child: Text(
                              'Empower Your Skills',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30),
                              maxLines: 1,
                              textAlign: TextAlign.justify,
                            ),
                          ),

                          const FittedBox(
                            child: Text(
                              'With One Click',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30),
                              maxLines: 2,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),

                          // Upper Portion about the Website
                          RichText(
                            text: const TextSpan(
                              text: 'Learn',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: ' with the Real Work Experince.',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                TextSpan(text: '\n'),
                                TextSpan(
                                  text: 'Build',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          ' professional projects like the top 1% developers',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    TextSpan(text: '\n'),
                                    TextSpan(
                                      text: 'Grab',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              ' paid Internship with the good Stipend',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          //Buttton to scroll down to the courses
                          SizedBox(height: height * 0.03),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: buttonColor,
                              shadowColor: buttonColor,
                              elevation: 50,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Scrollable.ensureVisible(
                                _containerKey.currentContext!,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: const Text(
                              'Explore Programs',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),

                          // Animation with an Image
                          SizedBox(
                            width: double.maxFinite,
                            height: height * 0.4,
                            child: Image.asset('assets/images/789.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // ),
                //   ],
                // ),
                //🥲🥲🥲🥲🥲
                Container(
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.teal.shade100,
                    color: Colors.blue.shade300,
                    // color: Colors.lightBlue.shade100,
                    // Colors.greenAccent.shade400,
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Expand your skills, broaden your horizons - ',
                            ),
                            TextSpan(
                              text: 'The Intern Bay',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            TextSpan(text: ', where learning never ends.')
                          ],
                        ),
                        style: paraTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const FittedBox(
                        child: Text(
                          'NO MATTER WHAT IT TAKES',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white60,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.lightBlue.shade100,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/9.svg',
                                height: 60,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 4,
                            child: Text(
                              'Modules design by experts',
                              style: TextStyle(color: Colors.white60),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.lightBlue.shade100,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/10.svg',
                                height: 60,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 4,
                            child: Text(
                              'Mentoring & doubt solving session',
                              style: TextStyle(color: Colors.white60),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.lightBlue.shade100,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/11.svg',
                                height: 60,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 4,
                            child: Text(
                              'Live classes with Recorded lectures',
                              style: TextStyle(color: Colors.white60),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),

                //💻Courses Component
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink[50],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        key: _containerKey,
                        child: const Text(
                          'Popular Courses',
                          style: headingStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ...List.generate(
                        courseModelData.length,
                        (index) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: CourseCard(
                              name: courseModelData[index].name,
                              image: courseModelData[index].image,
                              index: index,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  color: Colors.lightBlue.shade100,
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'The Intern Bay Advantanges',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        '100% online courses led with the mentorship',
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 20),
                      ...List.generate(
                          advantageCardData.length,
                          (index) => AdvantageCard(
                              icon: advantageCardData[index]['image'],
                              heading: advantageCardData[index]['heading'],
                              description: advantageCardData[index]
                                  ['description']))
                    ],
                  ),
                ),

                // 🕵️ Get In Touch Section
                Column(
                  children: const [
                    Text(
                      'The Intern Bay',
                      style: headingStyle,
                    ),
                    Text(
                      'Empower your skills, with one click',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  indent: width * 0.08,
                  endIndent: width * 0.08,
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '🫵 Interested, Know more',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const AboutUsScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        '  About Us',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
                // const Text.rich(
                //   TextSpan(
                //     text: '🫵 Interested, Know more',
                //     style: TextStyle(
                //       fontSize: 16,
                //       fontWeight: FontWeight.w400,
                //     ),
                //     children: [
                //       TextSpan(
                //         text: '  About Us',
                //         style: TextStyle(
                //           fontSize: 20,
                //           fontWeight: FontWeight.w900,
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => launchUrl(
                          Uri.parse(
                              'https://www.linkedin.com/in/theinternbay/'),
                          mode: LaunchMode.externalApplication,
                          // webOnlyWindowName: '_blank',
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/linkedIn.svg',
                          width: width * 0.1,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => launchUrl(
                          Uri.parse('https://instagram.com/theinternbay'),
                          mode: LaunchMode.externalApplication,
                          // webOnlyWindowName: '_blank',
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/instagram.svg',
                          width: width * 0.1,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          // var url =
                          //     Uri.parse('https://twitter.com/theinternbay');
                          // if (await canLaunchUrl(url)) {
                          //   await launchUrl(url);
                          // } else {
                          //   throw 'Could not launch $url';
                          // }

                          launchUrl(
                            Uri.parse('https://twitter.com/theinternbay'),
                            mode: LaunchMode.externalApplication,
                            // webOnlyWindowName: '_blank',
                          );
                        },
                        child: SvgPicture.asset(
                          'assets/icons/twitter.svg',
                          width: width * 0.1,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => launchUrl(
                          Uri.parse('https://youtube.com/@TheInternBay'),
                          mode: LaunchMode.externalApplication,
                          // webOnlyWindowName: '_blank',
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/youtube.svg',
                          width: width * 0.1,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => launchUrl(
                          Uri.parse(
                              'https://www.facebook.com/profile.php?id=100092401122401&is_tour_completed=true'),
                          mode: LaunchMode.externalApplication,
                          // webOnlyWindowName: '_blank',
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/facebook.svg',
                          width: width * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //😎🥲🥲😎😎🥲🥲🥲
            // ),
            // CopyRight
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.deepPurple[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.copyright_rounded),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'Copyright 2023 by '),
                        TextSpan(
                          text: 'The Intern Bay',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
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
      // endDrawer: const DrawerWidget(), //Drawer,
    );
  }
}

class AdvantageCard extends StatelessWidget {
  final String icon;
  final String heading;
  final String description;
  const AdvantageCard({
    super.key,
    required this.icon,
    required this.heading,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: softwhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: softBlack,
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(radius: 30, child: SvgPicture.asset(icon)
                // Icon(
                //   icon,
                //   size: 40,
                // ),
                ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const ContactWidget({
    super.key,
    required this.width,
    required this.icon,
    required this.title,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            SizedBox(
              width: width * 0.05,
            ),
            Icon(
              icon,
              size: width * 0.08,
            ),
            SizedBox(
              width: width * 0.05,
            ),
            FittedBox(
              child: Text(
                title,
                // style: TextStyle(fontSize: width * 0.05),
                maxLines: 1,
              ),
            ),
          ],
        ),
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
    // path.lineTo(0, 0);
    path.lineTo(0, h * 0.4);
    path.lineTo(w * 0.5, h * 0.58);
    path.lineTo(w, h * 0.4);
    // path.quadraticBezierTo(w * 0.5, h + 200, w, h);
    // path.lineTo(w, h);
    path.lineTo(w, 0);
    path.close();
    return path;
    // throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
    // throw UnimplementedError();
  }
}
