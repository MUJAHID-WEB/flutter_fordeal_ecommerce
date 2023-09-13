
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      leading: IconButton(
        onPressed: () {}, 
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
