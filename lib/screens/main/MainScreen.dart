import 'package:flutter/material.dart';

import '../screens.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => MainScreen(),
    );
  }

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 final PageController pageController = PageController(initialPage: 0);
  late int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      extendBody: true,
      body: PageView(
        controller: pageController,
        children: const <Widget>[
          Center(
            child: HomeScreen(),
          ),
          Center(
            child: BrandScreen(),
          ),
          Center(
            child: FavoriteScreen(),
          ),
          Center(
            child: CartScreen(),
          ),
          Center(
            child: AccountScreen(),
          ),
        ],
      ),
    
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xffcb3233),
            unselectedItemColor: Colors.black,
            selectedLabelStyle: Theme.of(context).textTheme.bodySmall,
            unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
                pageController.jumpToPage(index);
              });
            },
            items: const [

              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
               activeIcon: Icon(Icons.home_filled),
            //    activeIcon: ImageIcon(
            //   AssetImage('assets/images/mainIcon.png'),
            //   size: 10,
            //   //color: Colors.green,
            // ),


              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.diamond_outlined),
                label: 'Brand',
                activeIcon: Icon(Icons.diamond_rounded),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                label: 'Wishlist',
                activeIcon: Icon(Icons.favorite_rounded),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
                activeIcon: Icon(Icons.shopping_cart_rounded),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Account',
                activeIcon: Icon(Icons.account_circle_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
