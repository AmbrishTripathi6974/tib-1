import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tib/course_page/screens/course_screen.dart';

import '../home_screen/data/homeScreenData.dart';
import '../utils/colors.dart';

class CourseCard extends StatelessWidget {
  // var counter = 0;
  final String name;
  final String image;
  final int index;
  const CourseCard(
      {super.key,
      required this.name,
      required this.image,
      required this.index});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    Size _size = MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: 0.6,
      child: Container(
        // height: double.maxFinite,
        width: double.infinity,
        decoration: BoxDecoration(
          color: softwhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(colors: [
                    Color(0xff09203f),
                    Color(0xff537895),
                  ]),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.amber.shade200,
                      ),
                      child: const Text(
                        'Course with offline certificate',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ...List.generate(
                      courseCardDescription.length,
                      (index) => Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              courseCardDescription[index]['image'],
                              width: 24,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              courseCardDescription[index]['description'],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(height * 0.02),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.teal.shade50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Application Closes',
                          style: TextStyle(color: Colors.black54),
                        ),
                        FittedBox(
                          child: Text(
                            '20th May 2023',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      // onPressed: () => Get.to(
                      //   () => CourseScreen(),
                      //   // transition: Transition.circularReveal,
                      //   // duration: const Duration(seconds: 2),
                      //   arguments: [name, index],
                      // ),
                      onPressed: () {
                        List<dynamic> myList = [name, index];

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return CourseScreen(
                                data: myList,
                              );
                            },
                          ),
                        );
                      },
                      
                      child: FittedBox(
                        child: const Text(
                          'Know More >',
                          style: TextStyle(
                            color: softwhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
