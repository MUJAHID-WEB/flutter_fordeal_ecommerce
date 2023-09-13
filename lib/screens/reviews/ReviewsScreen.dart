import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({
    super.key,
  });

  static const String routeName = '/reviews';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ReviewsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Reviews Screen'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

