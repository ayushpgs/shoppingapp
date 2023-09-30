import 'package:equatable/equatable.dart';
import 'foryou_item_model.dart';

// ignore: must_be_immutable
class ForYouModel extends Equatable {
  ForYouModel({this.foryouItemList = const []});

  List<ForyouItemModel> foryouItemList;

  ForYouModel copyWith({List<ForyouItemModel>? foryouItemList}) {
    return ForYouModel(
      foryouItemList: foryouItemList ?? this.foryouItemList,
    );
  }

  @override
  List<Object?> get props => [foryouItemList];
}
