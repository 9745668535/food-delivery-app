import 'package:flutter/material.dart';
import 'package:myfoodcart/dash_order/screens/order_screen.dart';
import 'package:myfoodcart/resources/color_resource.dart';

import '../../dash_account/screens/account_page.dart';
import '../../dash_cart/screens/cart_page.dart';
import '../../dash_home/screens/home_page.dart';








class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    CartPage(),
    OrderScreen(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(activeIcon: Icon(Icons.home,color: ColorResource.appBackgroundColor,),
            icon: Icon(Icons.home,color: Colors.grey,),
            label: 'Home',
          ),
          BottomNavigationBarItem(activeIcon: Icon(Icons.shopping_cart,color: ColorResource.appBackgroundColor,),
            icon: Icon(Icons.shopping_cart,color: Colors.grey,),
            label: 'Cart',
          ),
          BottomNavigationBarItem(activeIcon: Icon(Icons.av_timer_outlined,color: ColorResource.appBackgroundColor,),
            icon: Icon(Icons.av_timer_outlined,color: Colors.grey,),
            label: 'Orders',
          ),
          BottomNavigationBarItem(activeIcon: Icon(Icons.person,color: ColorResource.appBackgroundColor),
            icon: Icon(Icons.person,color: Colors.grey,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}






