import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uikit/uikit.dart';

ThemeData get lightTheme => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: GoogleFonts.montserratAlternatesTextTheme(),
      colorScheme: const ColorScheme.light(
        primary: TestTaskColors.primaryDarkBlueColor,
        secondary: TestTaskColors.primaryDarkBlueColor1,
      ),
      splashColor: TestTaskColors.primaryDarkBlueColor,
      primaryColor: TestTaskColors.primaryDarkBlueColor,
      dividerTheme: const DividerThemeData(color: Colors.grey),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        shape: StadiumBorder(),
      ),
    );

/// TODO: - dark theme property

ThemeData get darkTheme => ThemeData.dark();
