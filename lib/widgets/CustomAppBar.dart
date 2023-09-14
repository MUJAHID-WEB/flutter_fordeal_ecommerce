
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const CategoriesScreen()),
  );
        }, 
        icon: Icon(
        Icons.menu,
        color: Colors.black,
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
