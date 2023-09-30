import 'package:equatable/equatable.dart';
import 'listeight_item_model.dart';
import 'listellipsefifteen2_item_model.dart';

// ignore: must_be_immutable
class AccountDetailsModel extends Equatable {
  AccountDetailsModel(
      {this.listeightItemList = const [],
      this.listellipsefifteen2ItemList = const []});

  List<ListeightItemModel> listeightItemList;

  List<Listellipsefifteen2ItemModel> listellipsefifteen2ItemList;

  AccountDetailsModel copyWith(
      {List<ListeightItemModel>? listeightItemList,
      List<Listellipsefifteen2ItemModel>? listellipsefifteen2ItemList}) {
    return AccountDetailsModel(
      listeightItemList: listeightItemList ?? this.listeightItemList,
      listellipsefifteen2ItemList:
          listellipsefifteen2ItemList ?? this.listellipsefifteen2ItemList,
    );
  }

  @override
  List<Object?> get props => [listeightItemList, listellipsefifteen2ItemList];
}
