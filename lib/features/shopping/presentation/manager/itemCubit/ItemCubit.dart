
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/features/shopping/data/repos/itemRepo.dart';
import 'package:store/features/shopping/presentation/manager/itemCubit/ItemStates.dart';

class ItemCubit extends Cubit<ItemStates>
{
  ItemCubit(this.itemRepo) : super(ItemInitial());



  final ItemRepo itemRepo;

  Future<void> fetchItem() async
  {
    emit(ItemLoading());
    var result = await itemRepo.fetchItems();

    result.fold((failure)
    {
      emit(ItemError(failure.errorMsg));
    }, (items){
      emit(ItemSuccess(items));
    });
  }
}