import 'package:flutter/material.dart';

class OneCalculatorButton extends StatelessWidget {
  const OneCalculatorButton({
    super.key,
    required this.text,
    required this.callback,
    required this.color,
  });
  final String text;
  final VoidCallback callback;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        child: InkWell(
          onTap: callback,
          borderRadius: BorderRadius.circular(50),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 45,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
