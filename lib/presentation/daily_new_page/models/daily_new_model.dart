import 'package:equatable/equatable.dart';
import 'listnineteen_item_model.dart';
import 'listfive_item_model.dart';

// ignore: must_be_immutable
class DailyNewModel extends Equatable {
  DailyNewModel(
      {this.listnineteenItemList = const [], this.listfiveItemList = const []});

  List<ListnineteenItemModel> listnineteenItemList;

  List<ListfiveItemModel> listfiveItemList;

  DailyNewModel copyWith(
      {List<ListnineteenItemModel>? listnineteenItemList,
      List<ListfiveItemModel>? listfiveItemList}) {
    return DailyNewModel(
      listnineteenItemList: listnineteenItemList ?? this.listnineteenItemList,
      listfiveItemList: listfiveItemList ?? this.listfiveItemList,
    );
  }

  @override
  List<Object?> get props => [listnineteenItemList, listfiveItemList];
}
