import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';
import 'package:store/features/shopping/presentation/manager/itemCubit/ItemCubit.dart';
import 'package:store/features/shopping/presentation/manager/itemCubit/ItemStates.dart';

import '../../../../../core/Wigets/customError.dart';
import '../../../../../core/Wigets/customLoadingIndecator.dart';
import '../../../../../core/utils/app_routing.dart';
import '../../../../../core/utils/assets.dart';

class buildGridProduct extends StatelessWidget {
  const buildGridProduct({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemCubit , ItemStates>(
      builder: (context , state){
        if (state is ItemSuccess)
          {
            return Column(
              children: [
                GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.KItemDeta);
                  },
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadowColor: Colors.grey,
                      elevation: 3,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(image: AssetImage(AssetsData.shoe1),
                                  width: double.infinity,
                                  height: 200,
                                  fit: BoxFit.fill,
                                ),
                              )),

                          Text('Run Didas',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text('Adidas',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                          SizedBox(height: 10,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('9.99\$',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                              ),

                              IconButton(
                                  onPressed: () {
                                    Get.snackbar('Item Added', 'Run Didas was Added to your Cart' , colorText: Colors.black);

                                  },

                                  icon: Icon(Icons.add_shopping_cart)),
                            ],
                          ),

                          SizedBox(height: 8,),
                        ],
                      )),
                ),
              ],
            );
          } else if(state is ItemError) {
          print(state.errorMsg);
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          GoRouter.of(context).push(AppRouter.KItemDeta);
                        },
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadowColor: Colors.grey,
                            elevation: 3,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              children: [
                                Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      child: Image(image: AssetImage(AssetsData.shoe1),
                                        width: double.infinity,
                                        height: 200,
                                        fit: BoxFit.fill,
                                      ),
                                    )),

                                SizedBox(height: 15,),

                                Text('Run Didas',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text('Adidas',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),

                                SizedBox(height: 10,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text('9.99\$',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      ),),
                                    ),

                                    IconButton(
                                        onPressed: () {
                                          Get.snackbar('Item Added', 'Run Didas was Added to your Cart' , colorText: Colors.black);

                                        },

                                        icon: Icon(Icons.add_shopping_cart)),
                                  ],
                                ),

                                SizedBox(height: 8,),
                              ],
                            )),
                      ),
                    ],
                  );

        } else {
         return customLoading();
        }
      },
    );
  }
}