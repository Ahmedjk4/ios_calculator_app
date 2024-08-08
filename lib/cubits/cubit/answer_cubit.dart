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
      str = str.replaceAll(RegExp(r"x"), "*");
      str = str.replaceAll(RegExp(r"÷"), "/");
      final result = eval(str).toString();
      emit(result);
    } on Exception catch (_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Invalid input"),
        ),
      );
    }
  }
}
