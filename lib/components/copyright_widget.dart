import 'package:flutter/material.dart';

Widget copyright = Container(
  padding: const EdgeInsets.symmetric(vertical: 10),
  color: Colors.tealAccent[400],
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
);
