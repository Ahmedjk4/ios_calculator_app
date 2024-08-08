import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_calculator/cubits/cubit/answer_cubit.dart';
import 'package:ios_calculator/helpers/calculator_buttons.dart';

class TopButtonsBody extends StatelessWidget {
  const TopButtonsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
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
                  onTap: () {
                    if (CalculatorButtons.buttons.keys.toList()[index] ==
                        "AC") {
                      BlocProvider.of<AnswerCubit>(context).updateState("");
                    } else {
                      BlocProvider.of<AnswerCubit>(context).updateState(
                          "${BlocProvider.of<AnswerCubit>(context).state}${CalculatorButtons.buttons.keys.toList()[index]}");
                    }
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 50,
                    child: Text(
                      CalculatorButtons.buttons.keys.toList()[index],
                      style: const TextStyle(
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
