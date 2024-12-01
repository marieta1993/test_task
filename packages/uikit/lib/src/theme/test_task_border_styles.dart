import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

OutlineInputBorder get outLineInputBorder => const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    );
OutlineInputBorder get outLineFocusedInputBorder => const OutlineInputBorder(
      borderSide: BorderSide(
        color: TestTaskColors.primaryDarkBlueColor,
      ),
    );
