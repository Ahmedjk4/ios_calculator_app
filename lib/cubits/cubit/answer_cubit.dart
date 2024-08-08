import 'package:bloc/bloc.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:flutter/material.dart';

class AnswerCubit extends Cubit<String> {
  AnswerCubit() : super("");
  void updateState(String newState) {
    emit(newState);
  }

  void calculateFinalResult(BuildContext context) {
    try {
      var str = state;
      str = state.replaceAll("x", "*");
      str = state.replaceAll("÷", "/");
      emit(eval(str).toString());
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Invalid input"),
        ),
      );
    }
  }
}
