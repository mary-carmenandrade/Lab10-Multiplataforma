import 'package:flutter/material.dart';
import 'package:lab10_tarea/app/view/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF40B7AD);
    const textColor = Color.fromARGB(255, 0, 0, 0);
    const backgroundColor = Color(0xFFF5F5F5);
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'OMEGLE',
              bodyColor: textColor,
              displayColor: textColor,
            ),
        useMaterial3: true,
      ),
      home:SplashPage(),
    );
  }
}
