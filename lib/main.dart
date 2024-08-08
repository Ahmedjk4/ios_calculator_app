import 'package:flutter/material.dart';
import 'package:ios_calculator/cubits/cubit/answer_cubit.dart';
import 'package:ios_calculator/observers/simple_bloc_observer.dart';
import 'widgets/all_buttons_body.dart';
import 'widgets/answer_body.dart';
import 'widgets/top_button_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  runApp(const IosCalculator());
}

class IosCalculator extends StatelessWidget {
  const IosCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnswerCubit(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: "HelveticaNeue"),
        home: const CalculatorNormalHomeView(),
      ),
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
          children: [
            Answer(),
            TopButtonsBody(),
            Padding(
              padding: EdgeInsets.only(bottom: 32.0, left: 9.0),
              child: AllButtonsBody(),
            )
          ],
        ),
      ),
    );
  }
}

class ZeroLongButton extends StatelessWidget {
  const ZeroLongButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff333333),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(50),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50),
            ),
            width: 190,
            height: 86.9,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
