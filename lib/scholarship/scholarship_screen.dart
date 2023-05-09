import 'package:flutter/material.dart';
import 'package:tib/components/app_bar.dart';
import 'package:tib/components/copyright_widget.dart';
import 'package:tib/constants/styles.dart';
import 'package:tib/scholarship/scholarship_data.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

class ScholarShipScreen extends StatelessWidget {
  const ScholarShipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBarWidget(width),
      body: Container(
        color: Colors.lightBlue.shade100,
        child: ListView(children: [
          Container(
            margin: const EdgeInsets.all(16),
            child: const Text(
              'Get Exciting Scholarships 🤩🤩',
              style: headingStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset(
            'assets/images/scholarship.png',
            fit: BoxFit.contain,
          ),
          Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'Criteria',
                  style: headingStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                ...List.generate(
                  criteria.length,
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
                          criteria[index]['image'],
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
                                criteria[index]['heading'],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
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
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      criteria[index]['description'],
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
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
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'So what are you waiting for ?',
                  style: headingStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
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
                    launchUrl(
                      Uri.parse('https://forms.gle/C36RV4ioQM5BdmedA'),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: const Text(
                    'Apply Now',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),

          // Container(
          //   width: 40,
          //   child: ElevatedButton(
          //     onPressed: () {
          //       launchUrl(
          //         Uri.parse('https://forms.gle/C36RV4ioQM5BdmedA'),
          //         mode: LaunchMode.externalApplication,
          //       );
          //     },
          //     child: Text('Apply Now'),
          //   ),
          // ),
          copyright,
        ]),
      ),
    );
  }
}
