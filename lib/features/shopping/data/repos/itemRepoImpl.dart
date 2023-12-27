import 'package:dartz/dartz.dart';
import 'package:store/core/Errors/failures.dart';
import 'package:store/features/shopping/data/models/itemModels.dart';
import 'package:store/features/shopping/data/repos/itemRepo.dart';

import '../../../../core/utils/api_service.dart';

class ItemRepoImpl implements ItemRepo
{
  final ApiService apiService;

  ItemRepoImpl(this.apiService);


  @override
  Future<Either<Failure, List<SneakerModel>>> fetchItems() async {

    try {
      var data = await apiService.get(endPoint: 'https://shoes-collections.p.rapidapi.com/shoes');

      List<SneakerModel> shoes = [];

      for (var item in data['items'])
        {
              shoes.add(SneakerModel.fromJson(item));
        }

      return right(shoes);

    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }




  //********************************************************************



  @override
  Future<Either<Failure, List<SneakerModel>>> fetchBrands() {

    throw UnimplementedError();
  }

}