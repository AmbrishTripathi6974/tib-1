import 'package:flutter/material.dart';

AppBar appBarWidget(double width) {
  return AppBar(
    leading: Hero(
      tag: 'logo',
      child: Container(
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
    ),
    title: const Text(
      'The Intern Bay',
      style: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),
    elevation: 0,
    centerTitle: true,
  );
}
