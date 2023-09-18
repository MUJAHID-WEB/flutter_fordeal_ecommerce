import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({
    super.key,
  });

  static const String routeName = '/addnewaddress';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => AddNewAddress(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBarWithTitle(
        title: 'Add New Address',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Add New Address'),
          ],
        ),
      ),
      //bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
