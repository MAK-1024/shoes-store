import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFeilld extends StatelessWidget {
  const CustomSearchTextFeilld({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: buildOutlineInputBorder(),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey[600]),
              prefixIcon: Opacity(
                  opacity: 0.4,
                  child: IconButton(onPressed: () {  }, icon: Icon(Icons.search,size: 24,color: Colors.black,),))
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
            color: Colors.grey
        )
    );
  }
}