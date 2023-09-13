import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({
    super.key,
  });

  static const String routeName = '/orders';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => OrdersScreen(),
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
            Text('Orders'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

