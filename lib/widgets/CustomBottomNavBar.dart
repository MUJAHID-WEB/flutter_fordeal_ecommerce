import 'package:flutter/material.dart';
import 'package:fordeal/screens/screens.dart';

// class CustomBottomNavBar extends StatefulWidget {
//   const CustomBottomNavBar({
//     super.key,
//   });

//   @override
//   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// }

// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     // return BottomNavigationBar(
//     //   onTap: (index) {
//     //     setState(() {
//     //       myindex = index;
//     //     });
//     //   },
//     //   currentIndex: myindex,
//     //   type: BottomNavigationBarType.fixed,

//     //   items: const [
//     //   BottomNavigationBarItem(
//     //     icon: Icon(
//     //       Icons.home,
//     //       color: Colors.black,
//     //     ),
//     //     label: 'Home',
//     //   ),
//     //   BottomNavigationBarItem(
//     //     icon: Icon(
//     //       Icons.diamond_outlined,
//     //       color: Colors.black,
//     //     ),
//     //     label: 'Brand',
//     //   ),
//     //   BottomNavigationBarItem(
//     //     icon: Icon(
//     //       Icons.favorite_border,
//     //       color: Colors.black,
//     //     ),
//     //     label: 'Wishlist',
//     //   ),
//     //   BottomNavigationBarItem(
//     //     icon: Icon(
//     //       Icons.shopping_cart_rounded,
//     //       color: Colors.black,
//     //     ),
//     //     label: 'Cart',
//     //   ),
//     //   BottomNavigationBarItem(
//     //     icon: Icon(
//     //       Icons.person_outlined,
//     //       color: Colors.black,
//     //     ),
//     //     label: 'Account',
//     //   ),
//     // ]);
//     // return NavigationBar(
//     //   height: 50,
//     //   backgroundColor: Colors.white,
//     //   indicatorColor: Color(0xffcb3233),
//     //   // indicatorShape: ,
//     //   selectedIndex: index,
//     //   onDestinationSelected: (index) =>
//     //     setState(()=> this.index = index),
//     //   destinations: [
//     //   NavigationDestination(
//     //     icon: Icon(Icons.home, color: Colors.black,),
//     //     label: 'Home',
//     //   ),
//     //   NavigationDestination(
//     //     icon: Icon(Icons.diamond_outlined, color: Colors.black,),
//     //     label: 'Brand',
//     //   ),
//     //   NavigationDestination(
//     //     icon: Icon(Icons.favorite_border, color: Colors.black,),
//     //     label: 'Wishlist',
//     //   ),
//     //   NavigationDestination(
//     //     icon: Icon(Icons.shopping_cart_rounded, color: Colors.black,),
//     //     label: 'Cart',
//     //   ),
//     //   NavigationDestination(
//     //     icon: Icon(Icons.person_outlined, color: Colors.black,),
//     //     label: 'Account',
//     //   ),

//     // ]);

//     ///////////////////////////////
//     return BottomAppBar(
//       color: Colors.white,
//       height: 70,
//       surfaceTintColor: Colors.white,
     
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Column(

//             children: [
//               IconButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/');
//                   },
//                   icon: Icon(
//                     Icons.home,
//                     color: Colors.black,
//                   ),
//                   selectedIcon: ImageIcon(
//               AssetImage('assets/images/mainicon.png'),
//               size: 50,
//               color: Colors.green,
//             ),
//                   ),
//               Text(
//                 'Home',
//                 style: TextStyle(color: Colors.black, fontSize: 15),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/brand');
//                   },
//                   icon: Icon(
//                     Icons.diamond_outlined,
//                     color: Colors.black,
//                   )),
//               Text(
//                 'Brand',
//                 style: TextStyle(color: Colors.black, fontSize: 15),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/favorite');
//                   },
//                   icon: Icon(
//                     Icons.favorite_border,
//                     color: Colors.black,
//                   )),
//                    Text(
//                     'Wishlist',
//                     style: TextStyle(color: Colors.black, fontSize: 15),
//                   ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/cart');
//                   },
//                   icon: Icon(
//                     Icons.shopping_cart_rounded,
//                     color: Colors.black,
//                   )),
//                    Text(
//                     'Cart',
//                     style: TextStyle(color: Colors.black, fontSize: 15),
//                   ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/account');
//                 },
//                 icon: Icon(
//                   Icons.person_outlined,
//                   color: Colors.black,
//                 ),
//               ),
//                Text(
//                     'Account',
//                     style: TextStyle(color: Colors.black, fontSize: 15),
//                   ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
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
