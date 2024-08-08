import 'package:flutter/material.dart';
import 'package:ios_calculator/cubits/cubit/answer_cubit.dart';
import 'package:ios_calculator/observers/simple_bloc_observer.dart';
import 'widgets/bottom_buttons_body.dart';
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
            BottomButtonsBody(),
          ],
        ),
      ),
    );
  }
}
