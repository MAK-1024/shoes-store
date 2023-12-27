
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store/features/shopping/data/repos/itemRepoImpl.dart';
import '../api_service.dart';


final getIt = GetIt.instance;

void setUp()

{


  getIt.registerSingleton<ApiService>(ApiService(Dio()));


  //********************************************************

  getIt.registerSingleton<ItemRepoImpl>(ItemRepoImpl(
      getIt.get<ApiService>(),
  ));

  //************************************************************

  getIt.registerSingleton<AuthRepo>(AuthRepo(
      getIt.get<ApiService>(),
  ));
}




class AuthRepo{
  final ApiService apiService;

  AuthRepo(this.apiService);
}
