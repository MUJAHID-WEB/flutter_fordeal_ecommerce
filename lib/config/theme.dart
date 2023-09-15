

import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Color(0xffF5F5F5),
    fontFamily: 'Poppins',
    //useMaterial3: true,
    textTheme: TextTheme(),
  );
}
// https://api.flutter.dev/flutter/material/TextTheme-class.html
TextTheme textTheme(){
  return const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.black,
      fontSize: 32,
      fontWeight: FontWeight.bold
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.w500
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.normal
    ),

// Body Text

    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal
    ),

  );
}