

import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class ProductDetailsDescription extends StatelessWidget {
  const ProductDetailsDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Price
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
            // Product Details
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
            // Stock
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

            // Size
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text('Size',
                  style: Theme.of(context).textTheme.bodyLarge),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizeMeasurementButton(
                  size: '34',
                ),
                SizeMeasurementButton(
                  size: '35',
                ),
                SizeMeasurementButton(
                  size: '36',
                ),
                SizeMeasurementButton(
                  size: '37',
                ),
                SizeMeasurementButton(
                  size: '38',
                ),
                SizeMeasurementButton(
                  size: '39',
                ),
              ],
            ),

            // Specifications
            DividerProductDetails(),
            BottomSheetButton(
              name: 'Specifications',
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SpecificationBottomSheet();
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


///// Size measurement
class SizeMeasurementButton extends StatelessWidget {
  const SizeMeasurementButton({
    super.key,
    required this.size,
  });

  final String size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 3, 8, 8),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffF5F5F5)),
            //color: Colors.black,
            shape: BoxShape.circle),
        child: Center(
          child: Text(size, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ),
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
        child: Stack(alignment: Alignment.topRight, children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/product_details/shirt.png',
                ),
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
