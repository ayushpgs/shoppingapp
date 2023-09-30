import 'package:equatable/equatable.dart';
import 'listellipsefifteen3_item_model.dart';
import 'listsender_item_model.dart';

// ignore: must_be_immutable
class MessagesModel extends Equatable {
  MessagesModel(
      {this.listellipsefifteen3ItemList = const [],
      this.listsenderItemList = const []});

  List<Listellipsefifteen3ItemModel> listellipsefifteen3ItemList;

  List<ListsenderItemModel> listsenderItemList;

  MessagesModel copyWith(
      {List<Listellipsefifteen3ItemModel>? listellipsefifteen3ItemList,
      List<ListsenderItemModel>? listsenderItemList}) {
    return MessagesModel(
      listellipsefifteen3ItemList:
          listellipsefifteen3ItemList ?? this.listellipsefifteen3ItemList,
      listsenderItemList: listsenderItemList ?? this.listsenderItemList,
    );
  }

  @override
  List<Object?> get props => [listellipsefifteen3ItemList, listsenderItemList];
}
