import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({
    super.key,
  });

  static const String routeName = '/coupon';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CouponScreen(),
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
            Text('Coupon'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

