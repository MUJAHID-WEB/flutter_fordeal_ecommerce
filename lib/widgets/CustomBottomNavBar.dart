import 'package:flutter/material.dart';
import 'package:fordeal/screens/screens.dart';

class ProductDetailsBottomNavBar extends StatefulWidget {
  const ProductDetailsBottomNavBar({
    super.key,
  });

  @override
  State<ProductDetailsBottomNavBar> createState() =>
      _ProductDetailsBottomNavBarState();
}

class _ProductDetailsBottomNavBarState
    extends State<ProductDetailsBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      height: 60,
      surfaceTintColor: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProductDetailsNavBarItem(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          ProductDetailsNavBarItem(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
          ProductDetailsNavBarItem(
            onPressed: () {
              Navigator.pushNamed(context, '/favorite');
            },
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            label: 'Save',
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                backgroundColor: Color(0xffcb3233)),
            child: Text(
              'Add to Cart',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

///////// Product Deatails Nav Bar Items
class ProductDetailsNavBarItem extends StatelessWidget {
  const ProductDetailsNavBarItem({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
  });
  final String label;
  final Icon icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          padding: EdgeInsets.only(top: 10),
          constraints: BoxConstraints(),
          icon: icon,
        ),
        Text(
          label,
          // 'Save',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}

////////////////
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
