import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/core/utils/assets.dart';

class CartItem extends StatefulWidget {
   CartItem({
    super.key,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {




  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(AssetsData.shoe1),
        title: Text('Naikee'),
        subtitle: Text("100"),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: (){},
        ),

      ),
    );
  }
}
