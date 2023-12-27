import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/core/utils/assets.dart';


class ShoeTile extends StatelessWidget {
   ShoeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(4, (index) => BuildItem()

          ),
        ),
        ),
      ],
    );
  }
}



Widget BuildItem(){
  return  Column(
    children: [
      Image(image: AssetImage(AssetsData.logo2,),
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ],
  );
}
