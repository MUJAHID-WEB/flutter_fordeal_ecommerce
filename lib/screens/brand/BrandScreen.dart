import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({
    super.key,
  });

  static const String routeName = '/brand';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => BrandScreen(),
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
            Text(
              'Brand',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.blue),
              ),
          ],
        ),
      ),
      //bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}