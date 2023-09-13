import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({
    super.key,
  });

  static const String routeName = '/product_list';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductsListScreen(),
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
            Text('ProductsListScreen'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
