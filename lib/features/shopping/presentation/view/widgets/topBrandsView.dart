import 'package:flutter/material.dart';
import 'package:store/core/utils/assets.dart';

class TopBrandsWidget extends StatelessWidget {
  final List<Widget> brandLogos = [
    // Replace these icons with your brand logos
    Image(image: AssetImage(AssetsData.nikee),width: 40,height: 40,),
    Image(image: AssetImage(AssetsData.addidas),width: 50,height: 40,),
    Image(image: AssetImage(AssetsData.puma),width: 50,height: 50,),
    Image(image: AssetImage(AssetsData.jordan),width: 40,height: 40,),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 40,
            runSpacing: 10.0,
            children: brandLogos.map((logo) {
              return Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: logo,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
