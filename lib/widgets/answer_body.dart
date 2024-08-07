// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 72,
                color: Colors.white,
                // To-Do: Implement the same font weight in ios calculator
              ),
            )
          ],
        ),
      ),
    );
  }
}
