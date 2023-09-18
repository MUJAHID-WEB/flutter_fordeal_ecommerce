import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import '../screens.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/address');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 15,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'Select delivery address',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 20,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/cart.png',
                    height: 130,
                    width: 130,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Your Shopping Cart Is Empty.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    style: OutlinedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        side: const BorderSide(
                            color: Color(0xffcb3233), width: 1.5)),
                    child: Text(
                      'Go Shopping!',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                ],
              ),
            ),
            //
            //
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Recommend For You',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        HomeProductCard(),
                        SizedBox(
                          width: 10,
                        ),
                        HomeProductCard(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        HomeProductCard(),
                        SizedBox(
                          width: 10,
                        ),
                        HomeProductCard(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        HomeProductCard(),
                        SizedBox(
                          width: 10,
                        ),
                        HomeProductCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
