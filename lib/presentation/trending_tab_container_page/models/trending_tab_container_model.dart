import 'package:equatable/equatable.dart';
import 'listellipsefifteen_item_model.dart';

// ignore: must_be_immutable
class TrendingTabContainerModel extends Equatable {
  TrendingTabContainerModel({this.listellipsefifteenItemList = const []});

  List<ListellipsefifteenItemModel> listellipsefifteenItemList;

  TrendingTabContainerModel copyWith(
      {List<ListellipsefifteenItemModel>? listellipsefifteenItemList}) {
    return TrendingTabContainerModel(
      listellipsefifteenItemList:
          listellipsefifteenItemList ?? this.listellipsefifteenItemList,
    );
  }

  @override
  List<Object?> get props => [listellipsefifteenItemList];
}
