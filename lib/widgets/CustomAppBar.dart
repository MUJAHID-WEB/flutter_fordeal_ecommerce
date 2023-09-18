import 'package:flutter/material.dart';

import '../screens/screens.dart';

////////// Deafault App Bar
///
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CategoriesScreen()),
          );
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}

/////////// BackAppBarWithSearch

class BackAppBarWithSearch extends StatelessWidget
    implements PreferredSizeWidget {
  const BackAppBarWithSearch({
    super.key, 
  });



  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffF5F5F5),
      elevation: 0,
    
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 18,),
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}

/////////// BackAppBarWithTitle

class BackAppBarWithTitle extends StatelessWidget
    implements PreferredSizeWidget {
  const BackAppBarWithTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffF5F5F5),
      elevation: 0,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios, 
          color: Colors.black,
          size: 18,
          ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
