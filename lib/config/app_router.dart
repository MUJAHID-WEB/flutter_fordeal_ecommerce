import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRouter{
  static Route onGenerateRoute(RouteSettings setting){
    print('This is route: ${setting.name}');

    switch (setting.name){
      case '/':
        return MainScreen.route();

      case MainScreen.routeName:
        return MainScreen.route();
        
      case HomeScreen.routeName:
        return HomeScreen.route();

      case AccountScreen.routeName:
        return AccountScreen.route();

      case BrandScreen.routeName:
        return BrandScreen.route();

      case CartScreen.routeName:
        return CartScreen.route();

      case FavoriteScreen.routeName:
        return FavoriteScreen.route();

      case ProductsListScreen.routeName:
        return ProductsListScreen.route();

      case ProductsDetailsScreen.routeName:
        return ProductsDetailsScreen.route();

      case CategoriesScreen.routeName:
        return CategoriesScreen.route();

      case ReviewsScreen.routeName:
        return ReviewsScreen.route();

      case OrdersScreen.routeName:
        return OrdersScreen.route();

      case CouponScreen.routeName:
        return CouponScreen.route();

      case WalletScreen.routeName:
        return WalletScreen.route();

      case AddressScreen.routeName:
        return AddressScreen.route();

      case AddNewAddress.routeName:
        return AddNewAddress.route();

      case SettingsScreen.routeName:
        return SettingsScreen.route();


      default:
        return _errorRoute();
      
    }
  }


  static Route _errorRoute(){
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Error')),
      ),
    );
  }
}