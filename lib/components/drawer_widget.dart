import 'package:flutter/material.dart';
import 'package:tib/offer_page/offer_page.dart';
import 'package:tib/scholarship/scholarship_screen.dart';

import '../about_us_page/screens/about_us_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[200],
              image: const DecorationImage(
                  image: AssetImage('assets/icons/the_intern_bay_logo.png')),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  height: 12,
                ),
                Text(
                  'The Intern Bay',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_4_rounded),
            title: const Text(' Campus Ambassador '),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const OfferPage();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium),
            title: const Text('Scholarship'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ScholarShipScreen();
                  },
                ),
              );
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('About Us'),
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
          ),
        ],
      ),
    );
  }
}
