import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/assets.dart';

import '../../../../../core/compo/buttonState.dart';

class ItemdetalisView extends StatefulWidget {
  const ItemdetalisView({super.key});

  @override
  State<ItemdetalisView> createState() => _ItemdetalisViewState();
}

class _ItemdetalisViewState extends State<ItemdetalisView> {

  int? _value;
  int _selectIndex = 0;
  static List<Color> colors = [
    Color(0xff29695D),
    Color(0xff5BBEA3),
    Color(0xff746A36),
    Color(0xff2E2E2E),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.white,
       leading: IconButton(onPressed: () {GoRouter.of(context).pop();  }, icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),)
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(

                      height: 350,
                      width: 370,
                      child: Image(image: AssetImage(AssetsData.shoe2)))),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25,),

                  Text('Run didas',style: TextStyle(fontSize: 26 , fontWeight: FontWeight.bold),),

                  SizedBox(height: 8,),

                  Text('99.9\$',style: TextStyle(fontSize: 18 ,color: Color.fromRGBO(0, 0, 0, 0.6),fontWeight: FontWeight.bold),),


                  SizedBox(height: 22,),

                  Text('Introducing the Adidas Ultraboost 21 Shoes, an epitome of comfort and performance. Engineered with cutting-edge Boost technology, these shoes offer unparalleled cushioning. ',
                    style: TextStyle(fontSize: 15 ,color: Color.fromRGBO(0, 0, 0, 0.4),fontWeight: FontWeight.bold), overflow: TextOverflow.clip,),

                  SizedBox(height: 30,),

                  SizedBox(
                    height: 38,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            scrollDirection: Axis.horizontal,
                            itemCount: colors.length,
                            itemBuilder: (context,index){
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _selectIndex = index;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: colors[index],
                                    child: Center(
                                      child: _selectIndex==index?Icon(Icons.check,color: Colors.white,):null,
                                    ),

                                  ),
                                ),
                              );
                            }),

                        Container(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: _value,
                              isExpanded: false,
                              hint: Text('Choose Size ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(0, 0, 0, 0.6)),),
                              items: [
                                DropdownMenuItem(
                                  value: 1,
                                    child:Text('40'),
                                ),
                                DropdownMenuItem(
                                  value: 2,
                                  child:Text('41'),
                                ),
                                DropdownMenuItem(
                                  value: 3,
                                  child:Text('42'),
                                ),
                                DropdownMenuItem(
                                  value: 4,
                                  child:Text('43'),
                                ),

                              ],

                              onChanged: (value){
                               setState(() {
                                 _value = value ?? 0 ;
                               });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),


                  SizedBox(height: 30,),


                  Align(
                      alignment: Alignment.center,
                      child: CircleButton()),

                  SizedBox(height: 20,),
                ],


              ),
            )

          ],
        ),
      ),
    );
  }
}
