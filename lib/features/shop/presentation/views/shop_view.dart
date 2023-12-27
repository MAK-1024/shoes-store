import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/core/utils/assets.dart';
import '../../../../core/compo/nav_bar.dart';
import '../../../shopping/presentation/view/shopping_view2.dart';



class ShopView extends StatefulWidget {
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShoppingView2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtonNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        title: Text('WearUP',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){

                {
                  showFlexibleBottomSheet(
                      minHeight: 0,
                      initHeight: 0.5,
                      maxHeight: 1,
                      context: context,
                      builder: _buildBottomSheet,
                      anchors: [0, 0.5, 1],
                      isSafeArea: true,
                      bottomSheetColor: Colors.white,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      )
                  );
                }

              },
              icon: Icon(Icons.shopping_cart,color: Colors.black,)
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu,color: Colors.black,),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }

        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(AssetsData.logo2),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: const ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: const ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25 , bottom: 25),
              child: const ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),


      body: _pages[_selectedIndex],
    );
  }
}








Widget _buildBottomSheet(
    BuildContext context,
    ScrollController scrollController,
    double bottomSheetOffset,
    ) {
  return Material(
    child: Container(
      color: Colors.white,
      child: ListView(
        controller: scrollController,


      ),
    ),
  );
}
