import 'package:equatable/equatable.dart';
import 'listellipsefifteen1_item_model.dart';
import 'listnineteen1_item_model.dart';

// ignore: must_be_immutable
class StoriesModel extends Equatable {
  StoriesModel(
      {this.listellipsefifteen1ItemList = const [],
      this.listnineteen1ItemList = const []});

  List<Listellipsefifteen1ItemModel> listellipsefifteen1ItemList;

  List<Listnineteen1ItemModel> listnineteen1ItemList;

  StoriesModel copyWith(
      {List<Listellipsefifteen1ItemModel>? listellipsefifteen1ItemList,
      List<Listnineteen1ItemModel>? listnineteen1ItemList}) {
    return StoriesModel(
      listellipsefifteen1ItemList:
          listellipsefifteen1ItemList ?? this.listellipsefifteen1ItemList,
      listnineteen1ItemList:
          listnineteen1ItemList ?? this.listnineteen1ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listellipsefifteen1ItemList, listnineteen1ItemList];
}
