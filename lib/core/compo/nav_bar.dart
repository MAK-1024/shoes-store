import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtonNav extends StatelessWidget {

  void Function(int)? onTabChange;

   MyButtonNav({super.key , required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade300,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),


          tabs: [
        GButton(icon: Icons.home,text: 'Shop',),
        GButton(icon: Icons.favorite,text: 'Favorite',),
      ]);

  }
}
