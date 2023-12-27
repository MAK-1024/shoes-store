import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:store/core/utils/api_service.dart';
import 'package:store/features/shopping/data/repos/itemRepoImpl.dart';
import 'package:store/features/shopping/presentation/manager/itemCubit/ItemCubit.dart';
import 'core/utils/app_routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        
        BlocProvider(create: (context) => ItemCubit(
            ItemRepoImpl(
                ApiService(
                    Dio()
                ),
            ),)..fetchItem(),
        ),
        
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: MaterialApp.router(
            routerConfig: AppRouter.router ,
            debugShowCheckedModeBanner: false,
          )
      ),
    );
  }
}


