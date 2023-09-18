import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

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
            //   Image.asset(
            //   'assets/images/product_details/adidas.png',

            //   fit: BoxFit.fill,
            // ),
            Image(
              image: AssetImage('assets/images/product_details/shirt.png'),
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '6346.83 AED ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('(VAT Inclusive)',
                                style: Theme.of(context).textTheme.bodyMedium),
                          ],
                        ),
                        Text('12423603',
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text('Cotton Dress',
                        style: Theme.of(context).textTheme.bodyLarge),
                    // Sold & Review
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('68 Sold / Month',
                              style: Theme.of(context).textTheme.bodyLarge),
                          Text('Reviews (6)',
                              style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    ),

                    // Style
                    Text('Style: Black',
                        style: Theme.of(context).textTheme.bodyLarge),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        StyleContainer(),
                        StyleContainer(),
                        StyleContainer(),
                        StyleContainer(),
                        StyleContainer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ProductDetailsBottomNavBar(),
    );
  }
}

/////////// Style Container
class StyleContainer extends StatelessWidget {
  const StyleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
      child: CustomPaint(
        painter: DottedBorderPainter(),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
         Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                
                  image: DecorationImage(
            image: AssetImage(
                'assets/images/product_details/shirt.png',),
            fit: BoxFit.cover,
                  ),
                ),
                 
            ),
    
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  '0 Stock',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
