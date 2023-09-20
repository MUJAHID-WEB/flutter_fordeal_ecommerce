import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import '../screens.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({
    super.key,
  });

  static const String routeName = '/product_details';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductsDetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBarWithSearch(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/images/product_details/shirt.png'),
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
            ),
            ////// Description
            ProductDetailsDescription(),

            ///// Delivery
            ProductDetailsPolicy(),

            //// Reviews
            ProductDetailsReviews(),


          ],
        ),
      ),
      bottomNavigationBar: ProductDetailsBottomNavBar(),
    );
  }
}



