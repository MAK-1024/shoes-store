
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';
import 'package:store/features/shopping/presentation/view/widgets/itemCards.dart';
import 'package:store/features/shopping/presentation/view/widgets/topBrandsView.dart';

import '../../../../core/compo/search_bar.dart';
import '../../../../core/utils/app_routing.dart';
import '../../../../core/utils/assets.dart';


class ShoppingView2 extends StatelessWidget {
  const ShoppingView2({super.key});


  @override
  Widget build(BuildContext context) {
    return productBuilder();
  }


  Widget productBuilder()
  {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CustomSearchTextFeilld(),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Top Brands',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),
              ),
            ),

            SizedBox(height: 20,),

            TopBrandsWidget(),

            SizedBox(height: 20,),

            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 1/1.90,
              children: List.generate(20, (index) => buildGridProduct()),

            ),
          ],
        ),
      ),
    );


  }



}





