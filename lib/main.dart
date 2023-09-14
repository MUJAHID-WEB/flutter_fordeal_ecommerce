import 'package:flutter/material.dart';
import 'package:fordeal/config/app_router.dart';
import 'package:fordeal/config/theme.dart';
import 'package:fordeal/widgets/widgets.dart';
import 'screens/screens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clearance',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      theme: theme(),

      // onGenerateRoute: AppRouter.onGenerateRoute,
      // initialRoute: HomeScreen.routeName,
      home: CustomBottomNavBar(),
    );
  }
}


