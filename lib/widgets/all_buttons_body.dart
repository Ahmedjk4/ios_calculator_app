import 'package:flutter/material.dart';
import 'package:ios_calculator/main.dart';
import 'one_calculator_button.dart';

class AllButtonsBody extends StatelessWidget {
  const AllButtonsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ZeroLongButton(),
        const SizedBox(
          width: 14.0,
        ),
        OneCalculatorButton(
          color: const Color(0xff333333),
          text: ".",
          callback: () {},
        ),
        const SizedBox(
          width: 15.0,
        ),
        OneCalculatorButton(
          color: const Color(0xffFF9F0A),
          text: "=",
          callback: () {},
        ),
      ],
    );
  }
}
