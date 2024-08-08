import 'package:flutter/material.dart';

class CalculatorButtons {
  static final Map<String, Map<Color, VoidCallback>> buttons = {
    "AC": {
      const Color(0xffA5A5A5): () {},
    },
    "+/-": {
      const Color(0xffA5A5A5): () {},
    },
    "%": {
      const Color(0xffA5A5A5): () {},
    },
    "/": {
      const Color(0xffFF9F0A): () {},
    },
    "7": {
      const Color(0xff333333): () {},
    },
    "8": {
      const Color(0xff333333): () {},
    },
    "9": {
      const Color(0xff333333): () {},
    },
    "x": {
      const Color(0xffFF9F0A): () {},
    },
    "4": {
      const Color(0xff333333): () {},
    },
    "5": {
      const Color(0xff333333): () {},
    },
    "6": {
      const Color(0xff333333): () {},
    },
    "-": {
      const Color(0xffFF9F0A): () {},
    },
    "1": {
      const Color(0xff333333): () {},
    },
    "2": {
      const Color(0xff333333): () {},
    },
    "3": {
      const Color(0xff333333): () {},
    },
    "+": {
      const Color(0xffFF9F0A): () {},
    },
  };
  static Color colorAtIndex(int index) {
    List<String> buttonsList = buttons.keys.toList();
    if (index >= 0 && index < buttonsList.length) {
      String buttonName = buttonsList[index];
      Map<Color, VoidCallback>? buttonColors = buttons[buttonName];
      Color color = buttonColors!.keys.first;
      return color;
    } else {
      // Handle out-of-bounds error
      return Colors.transparent;
    }
  }
}
