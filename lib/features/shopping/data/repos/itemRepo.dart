import 'package:dartz/dartz.dart';

import '../../../../core/Errors/failures.dart';
import '../models/itemModels.dart';

abstract class ItemRepo
{
  Future<Either<Failure , List<SneakerModel>>> fetchItems();
  Future<Either<Failure , List<SneakerModel>>> fetchBrands();
}