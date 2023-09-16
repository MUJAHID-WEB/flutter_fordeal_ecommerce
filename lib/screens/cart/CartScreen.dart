import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  static const String routeName = '/cart';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 15,
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Select delivery address',
                    style: Theme.of(context).textTheme.bodySmall, 
                    ),
                ),
                  Icon(Icons.arrow_drop_down,
                  size: 20,
                  )
              ],
            ),
          ),
          //
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icons/cart.png',
                height: 150,
                width: 150,
                ),
                SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Your Shopping Cart Is Empty.',
                  style: Theme.of(context).textTheme.bodyMedium,
                  ),
              ),
              TextButton(
                onPressed: (){}, 
                child: Text(
                  'Go Shopping!',
                   style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
            ],
          ),
        ],
      ),
      
    );
  }
}