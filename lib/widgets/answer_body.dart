import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_calculator/cubits/cubit/answer_cubit.dart';

class Answer extends StatelessWidget {
  const Answer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BlocBuilder<AnswerCubit, String>(
              builder: (context, state) {
                return Text(
                  state,
                  style: const TextStyle(
                    fontSize: 72,
                    color: Colors.white,
                  ),
                );
              },
              // fix this later but it works perfect now.
            ),
          ],
        ),
      ),
    );
  }
}
