import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_calculator/cubits/cubit/answer_cubit.dart';
import 'package:ios_calculator/helpers/calculator_buttons.dart';

void validateButtons(int index, BuildContext context) {
    if (CalculatorButtons.buttons.keys.toList()[index] == "AC") {
      BlocProvider.of<AnswerCubit>(context).updateState("");
    } else if (CalculatorButtons.buttons.keys.toList()[index] == "+/-") {
      if (BlocProvider.of<AnswerCubit>(context).state.startsWith("-")) {
        BlocProvider.of<AnswerCubit>(context).updateState(
            BlocProvider.of<AnswerCubit>(context).state.substring(1));
      } else {
        BlocProvider.of<AnswerCubit>(context)
            .updateState("-${BlocProvider.of<AnswerCubit>(context).state}");
      }
    } else {
      BlocProvider.of<AnswerCubit>(context).updateState(
          "${BlocProvider.of<AnswerCubit>(context).state}${CalculatorButtons.buttons.keys.toList()[index]}");
    }
  }