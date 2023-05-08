import 'package:flutter/material.dart';
import '../../components/copyright_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timelines/timelines.dart';

import '../../utils/colors.dart';
import '../data/module_data.dart';
import '../models/course_screen.dart';

class CourseScreen extends StatelessWidget {
  final String languages = 'English, Hindi';
  final List data;
  final CourseScreenModel model = CourseScreenModel();
  CourseScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: width * 0.01),
          width: 20,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icons/the_intern_bay_logo.png',
              ),
            ),
          ),
        ),
        title: const Text(
          'The Intern Bay',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.greenAccent.shade400,
        width: double.maxFinite,
        child: ListView(
          children: [
            //😎 Upper Section

            Container(
              height: height * 0.6,
              width: double.maxFinite,
              padding: const EdgeInsets.all(30),
              color: Colors.tealAccent[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.amber.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    child: const FittedBox(
                      child: Text(
                        'Offline Certificate with Online training',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  FittedBox(
                    child: Text(
                      data[0],
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: softwhite,
                        overflow: TextOverflow.clip,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(
                    model.courseDescription[data[1]]['tech'],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: softwhite,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        maxRadius: 28,
                        backgroundColor: Colors.black26,
                        child: CircleAvatar(
                          maxRadius: 22,
                          child: Icon(
                            Icons.volume_up_rounded,
                            size: 30,
                          ),
                        ),
                      ),
                      const Spacer(flex: 1),
                      Text(
                        languages,
                        style: const TextStyle(
                          color: softwhite,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),

                  // Expanded(
                  // height: 60,

                  //   child: GridView.builder(
                  //     gridDelegate:
                  //         const SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisSpacing: 0.0,
                  //       crossAxisCount: 2,
                  //       mainAxisSpacing: 0,
                  //       mainAxisExtent: 60,
                  //     ),
                  //     itemCount: model.chips.length,
                  //     padding: const EdgeInsets.all(0),
                  //     shrinkWrap: true,
                  //     itemBuilder: ((context, index) {
                  //       return ActionChip(
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //         ),
                  //         padding: const EdgeInsets.symmetric(
                  //           vertical: 6,
                  //           horizontal: 6,
                  //         ),
                  //         label: FittedBox(
                  //           child: Row(
                  //             children: [
                  //               model.chips[index][IconData] ==
                  //                       Icons.star_rounded
                  //                   ? Icon(
                  //                       model.chips[index][IconData],
                  //                       size: 24,
                  //                       color: Colors.amber.shade900,
                  //                     )
                  //                   : Icon(
                  //                       model.chips[index][IconData],
                  //                       size: 24,
                  //                       color: Colors.black,
                  //                     ),
                  //               const SizedBox(
                  //                 width: 10,
                  //               ),
                  //               Text(
                  //                 model.chips[index]['text'],
                  //                 style: const TextStyle(
                  //                     fontSize: 16, color: Colors.black),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       );
                  //     }),
                  //   ),
                  // ),

                  //🥲🥲
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        model.chips.length - 1,
                        (index) {
                          return Row(
                            children: [
                              ActionChip(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6,
                                  horizontal: 6,
                                ),
                                label: FittedBox(
                                  child: Row(
                                    children: [
                                      model.chips[index][IconData] ==
                                              Icons.star_rounded
                                          ? Icon(
                                              model.chips[index][IconData],
                                              size: 24,
                                              color: Colors.amber.shade900,
                                            )
                                          : Icon(
                                              model.chips[index][IconData],
                                              size: 24,
                                              color: Colors.black,
                                            ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        model.chips[index]['text'],
                                        style: const TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  ActionChip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 6,
                    ),
                    label: FittedBox(
                      child: Row(
                        children: [
                          model.chips[2][IconData] == Icons.star_rounded
                              ? Icon(
                                  model.chips[0][IconData],
                                  size: 24,
                                  color: Colors.amber.shade900,
                                )
                              : Icon(
                                  model.chips[2][IconData],
                                  size: 24,
                                  color: Colors.black,
                                ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            model.chips[2]['text'],
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: height * 0.02,
                  // )
                ],
              ),
            ),

            //
            // const SizedBox(height: 40),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.tealAccent[100]),
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    'Course Enrollment starting in 2 Days 😎😎',
                    style: TextStyle(
                        color: softBlack,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                // ElevatedButton(onPressed: () {}, child: Text('2 Days'))
              ],
            ),

            //🕵️ Course Highlights

            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  // color: Colors.greenAccent.shade400,
                  color: Colors.tealAccent[100],
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              // color: Colors.lightBlue.shade100,
              // padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FittedBox(
                    child: Text(
                      'Course Highlights',
                      style: TextStyle(
                        fontSize: 30,
                        color: softBlack,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  ...List.generate(
                    model.courseHighlights.length,
                    (index) => Container(
                      padding: EdgeInsets.only(left: width * 0.07),
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SvgPicture.asset(
                              model.courseHighlights[index]['image'],
                              fit: BoxFit.contain,
                              width: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    model.courseHighlights[index]['heading'],
                                    style: const TextStyle(
                                      color: softBlack,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                // FittedBox(
                                //   child:
                                Text(
                                  model.courseHighlights[index]
                                      ['descriptionText'],
                                  style: const TextStyle(
                                    color: softBlack,
                                    fontSize: 16,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                // ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            //😎😎TimeLine Course Modules
            const Text(
              'Course Contents',
              style: TextStyle(
                fontSize: 30,
                color: softBlack,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: height * 0.4,
              child: Timeline.tileBuilder(
                builder: TimelineTileBuilder.fromStyle(
                  contentsAlign: ContentsAlign.alternating,
                  contentsBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(modules[data[1]]['modules'][index]),
                  ),
                  itemCount: modules[data[1]]['modules'].length,
                ),
              ),
            ),

            //Gap

            //🤔 Why Learn
            Container(
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // FittedBox(
                  //   child:
                  Text(
                    'Why Learn ${data[0]}',
                    style: const TextStyle(
                      fontSize: 25,
                      color: softBlack,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.lightBlue.shade100,
                      color: Colors.tealAccent[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/789.png',
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ...List.generate(
                          3,
                          ((index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    model.whyLearnIt[data[1]]
                                        ['heading${index + 1}'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  model.whyLearnIt[data[1]]
                                      ['description${index + 1}'],
                                  style: const TextStyle(
                                    // fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //📰 Certificate
            Container(
              padding: const EdgeInsets.all(30),
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Industry Recognized Certification',
                    style: TextStyle(
                      fontSize: 25,
                      color: softBlack,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: height * 0.5,
                    decoration: BoxDecoration(
                      // color: Colors.lightBlue.shade100,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/tib_certificate.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //🙋‍♂️ How will Your Training Work
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  // color: Colors.greenAccent.shade400,
                  color: Colors.tealAccent[100],
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FittedBox(
                    child: Text(
                      'How will your training work ?',
                      style: TextStyle(
                        fontSize: 30,
                        color: softBlack,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),

                  //😎Training

                  ...List.generate(
                    model.trainingwork.length,
                    (index) => Container(
                      padding: EdgeInsets.only(left: width * 0.07),
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SvgPicture.asset(
                              model.trainingwork[index]['image'],
                              fit: BoxFit.fitWidth,
                              width: 40,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    model.trainingwork[index]['heading'],
                                    style: const TextStyle(
                                      color: softBlack,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                // FittedBox(
                                //   child:
                                Text(
                                  model.trainingwork[index]['descriptionText'],
                                  style: const TextStyle(
                                    color: softBlack,
                                    fontSize: 16,
                                  ),
                                  // overflow: TextOverflow.ellipsis,
                                ),
                                // ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            //Gap

            // CopyRight 2023 The Intern Bay
            copyright,
          ],
        ),
      ),
      // endDrawer: const DrawerWidget(),
    );
  }
}
