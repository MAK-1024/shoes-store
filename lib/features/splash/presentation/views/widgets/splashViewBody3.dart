
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routing.dart';
import '../../../../../core/utils/assets.dart';




class SplashViewsBody3 extends StatelessWidget {
  const SplashViewsBody3({super.key});



  @override
  Widget build(BuildContext context) {


    void NavigateLogin() {
      GoRouter.of(context).push(AppRouter.KShopView);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(AssetsData.logo,height: 240,),
            ),

            SizedBox(height: 40,),

            Text('Just do It',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold

            ),),

            SizedBox(height: 24,),


            Text('Brand new shoes and custom Kicks made with premium quality',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),


            SizedBox(height: 40,),

            ElevatedButton(
              onPressed: () {
                NavigateLogin();
              },
              child: Text('Shop Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(350, 70)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
