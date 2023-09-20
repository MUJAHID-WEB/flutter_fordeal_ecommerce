

import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class ProductDetailsPolicy extends StatelessWidget {
  const ProductDetailsPolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ship

            BottomSheetButton(
              name: 'Shipment',
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return BottomSheetItem(
                      heading: 'Sphipment',
                      body: '',
                    );
                  },
                );
              },
            ),
            // Return
            DividerProductDetails(),
            BottomSheetButton(
              name: 'Return Policy',
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return BottomSheetItem(
                      heading: 'This item supports free return within 15 days',
                      body: 'Clearence provides free return service for you within 15 days after your order is received',
                    );
                  },
                );
              },
            ),
            // Delivery
            DividerProductDetails(),
            BottomSheetButton(
              name: 'Cash on Delivery',
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return BottomSheetItem(
                      heading: 'Cash on Delivery',
                      body: 'Cash On Delivery available, check more details upon payment.',
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

