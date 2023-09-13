
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/');
          }, icon: Icon(Icons.home, color: Colors.black,)),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/brand');
          }, icon: Icon(Icons.diamond_outlined, color: Colors.black,)),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/favourite');
          }, icon: Icon(Icons.favorite_border, color: Colors.black,)),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/cart');
          }, icon: Icon(Icons.shopping_cart_rounded, color: Colors.black,)),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/account');
          }, icon: Icon(Icons.person_outlined, color: Colors.black,))
        ],
      )),
    );
  }
}