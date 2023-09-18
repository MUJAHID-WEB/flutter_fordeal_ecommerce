import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  static const String routeName = '/home';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 10),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Padding(
               padding: EdgeInsets.only(bottom: 10),
               child: Row(
             
                 children: [
                   HomeProductCard(),
                   SizedBox(width: 10,),
                   HomeProductCard(),
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 10),
               child: Row(
                 
                 children: [
                   HomeProductCard(),
                   SizedBox(width: 10,),
                   HomeProductCard(),
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 10),
               child: Row(
                 
                 children: [
                   HomeProductCard(),
                   SizedBox(width: 10,),
                   HomeProductCard(),
                 ],
               ),
             ),
           ],
         ),
          ),
      ),
      //bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product_details');
      },
      child: Container(
        height: 300,
        width: 181,
        // color: Colors.white,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 240,
                child: 
                Image.asset(
                  'assets/images/product_details/adidas.png',
                  fit: BoxFit.cover,
                  )
                // Image.network(
                //   'https://picsum.photos/id/1074/400/400',
                //   fit: BoxFit.cover,
                //   ),
              ),
              SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(
                        'Adidas Team Force 33',
                        style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(height: 5),
                        Text(
                        '7.99 AED',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


