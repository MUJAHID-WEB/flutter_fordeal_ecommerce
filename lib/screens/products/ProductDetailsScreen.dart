import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({
    super.key,
  });

  static const String routeName = '/product_details';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductsDetailsScreen(),
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
            Text('ProductsDetailsScreen'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
