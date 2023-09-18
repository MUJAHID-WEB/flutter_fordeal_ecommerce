import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({
    super.key,
  });

  static const String routeName = '/address';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => AddressScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBarWithTitle(
        title: 'Address',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/icons/location.png',
              height: 200,
              width: 200,
            ),
            
            Text(
              'You have not added address',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/addnewaddress');
                },
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    backgroundColor: Color(0xffcb3233)),
                child: Text(
                  'Add New Address',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
