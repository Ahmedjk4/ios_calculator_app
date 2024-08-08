import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_calculator/cubits/cubit/answer_cubit.dart';
import 'one_calculator_button.dart';
import 'zero_long_button.dart';

class BottomButtonsBody extends StatelessWidget {
  const BottomButtonsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0, left: 9.0),
      child: Row(
        children: [
          ZeroLongButton(
            callback: () {
              BlocProvider.of<AnswerCubit>(context).updateState(
                  "${BlocProvider.of<AnswerCubit>(context).state}0");
            },
          ),
          const SizedBox(
            width: 14.0,
          ),
          OneCalculatorButton(
            color: const Color(0xff333333),
            text: ".",
            callback: () {
              BlocProvider.of<AnswerCubit>(context).updateState(
                  "${BlocProvider.of<AnswerCubit>(context).state}.");
            },
          ),
          const SizedBox(
            width: 15.0,
          ),
          OneCalculatorButton(
            color: const Color(0xffFF9F0A),
            text: "=",
            callback: () {
              BlocProvider.of<AnswerCubit>(context)
                  .calculateFinalResult(context);
            },
          ),
        ],
      ),
    );
  }
}
