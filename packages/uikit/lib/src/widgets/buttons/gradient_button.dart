import 'package:flutter/material.dart';
import 'package:uikit/src/theme/test_task_colors.dart';
import 'package:uikit/src/theme/test_task_dimensions.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const GradientButton(
      {super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: paddingAll20,
        backgroundColor: Colors.transparent, // Make the background transparent
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              TestTaskColors.primaryDarkBlueColor,
              TestTaskColors.primaryDarkBlueColor,
              TestTaskColors.primaryDarkBlueColor1,
              TestTaskColors.primaryDarkBlueColor1,
              Colors.white70,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: roundedBorder30,
        ),
        child: Container(
          constraints: const BoxConstraints(minWidth: 200, minHeight: 50),
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
