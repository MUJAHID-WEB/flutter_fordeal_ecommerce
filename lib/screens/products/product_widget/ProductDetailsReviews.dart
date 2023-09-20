import 'package:flutter/material.dart';

class ProductDetailsReviews extends StatelessWidget {
  const ProductDetailsReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/reviews');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Reviews (4)',
                        style: Theme.of(context).textTheme.bodyLarge),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 13,
                    ),
                  ],
                )),

                 GestureDetector(
                  onTap: () {
                  Navigator.pushNamed(context, '/reviews');
                },
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       ReviewsItem(),
                       ReviewsItem(),
                     ],
                   ),
                 ),
                 


            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reviews');
              },
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  side: const BorderSide(color: Colors.grey, width: 1)),
              child: Text(
                'More reviews',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewsItem extends StatelessWidget {
  const ReviewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 8, 25),
      child: Container(
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
    );
  }
}
