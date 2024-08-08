import 'package:bloc/bloc.dart';

class AnswerCubit extends Cubit<String> {
  AnswerCubit() : super("");
  void updateState(String newState) {
    emit(newState);
  }
}
