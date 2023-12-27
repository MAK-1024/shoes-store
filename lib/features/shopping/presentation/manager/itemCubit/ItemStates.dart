import 'package:equatable/equatable.dart';

import '../../../data/models/itemModels.dart';

abstract class ItemStates extends Equatable
{

  ItemStates();

  @override
  List<Object> get props => [];
}

class ItemInitial extends ItemStates{}

class ItemLoading extends ItemStates{}

class ItemSuccess extends ItemStates{
  final List<SneakerModel> items;

  ItemSuccess(this.items);

}

class ItemError extends ItemStates{
  final String errorMsg;

  ItemError(this.errorMsg);
}