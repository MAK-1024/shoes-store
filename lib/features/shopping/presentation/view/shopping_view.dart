import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/compo/search_bar.dart';


class ShoppingView extends StatefulWidget {
  const ShoppingView({super.key});


  @override
  State<ShoppingView> createState() => _ShoppingViewState();
}

class _ShoppingViewState extends State<ShoppingView> {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchTextFeilld(),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text('Everyone flies.. some fly longer than others',style: TextStyle(color: Colors.grey[600]),),
        ),

        SizedBox(height: 12,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks 🔥',style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold),),
              Text('See All',style: TextStyle(fontWeight: FontWeight.bold , color: Colors.blue),),
            ],
          ),
        ),

        SizedBox(height: 12,),

        // Expanded(child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: 4,
        //     itemBuilder: (context , index) {
        //         Shoe shoe = value.GetShoeList()[index];
        //       return ShoeTile(
        //         ontap: () => addShoeToCart(shoe),
        //       );
        //     })),



        Padding(
          padding: const EdgeInsets.only(top: 25 , left: 25 , right: 25),
          child: Divider(color: Colors.grey,),
        ),

      ],
     );
  }
}
