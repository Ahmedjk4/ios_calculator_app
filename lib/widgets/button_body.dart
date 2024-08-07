// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ios_calculator/helpers/calculator_buttons.dart';

class ButtonBody extends StatelessWidget {
  const ButtonBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: CalculatorButtons.colorAtIndex(index),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Material(
                borderRadius: BorderRadius.circular(50),
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blueGrey,
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 50,
                    child: Text(
                      CalculatorButtons.buttons.keys.toList()[index],
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: CalculatorButtons.buttons.length,
      ),
    );
  }
}
