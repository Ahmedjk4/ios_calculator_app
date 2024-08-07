import 'package:flutter/material.dart';
import 'widgets/answer_body.dart';
import 'widgets/button_body.dart';

void main() {
  runApp(const IosCalculator());
}

class IosCalculator extends StatelessWidget {
  const IosCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "HelveticaNeue"),
      home: const CalculatorNormalHomeView(),
    );
  }
}

class CalculatorNormalHomeView extends StatefulWidget {
  const CalculatorNormalHomeView({super.key});

  @override
  State<CalculatorNormalHomeView> createState() =>
      _CalculatorNormalHomeViewState();
}

class _CalculatorNormalHomeViewState extends State<CalculatorNormalHomeView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [Answer(), ButtonBody()],
        ),
      ),
    );
  }
}

// now it's working let's push it on github

