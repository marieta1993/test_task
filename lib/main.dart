import 'package:flutter/material.dart';
import 'package:test_task/presentation/test_screen.dart';
import 'package:uikit/uikit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: false,
      splitScreenMode: true,
      builder: (_, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home: const TestScreen(), // Set the initial screen here
          routes: {
            // Define additional named routes if needed
            '/test': (context) => const TestScreen(),
          },
        );
      },
    );
  }
}
