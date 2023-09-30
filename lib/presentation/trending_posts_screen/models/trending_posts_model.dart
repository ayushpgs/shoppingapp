import 'package:equatable/equatable.dart';
import 'trendingposts_item_model.dart';

// ignore: must_be_immutable
class TrendingPostsModel extends Equatable {
  TrendingPostsModel({this.trendingpostsItemList = const []});

  List<TrendingpostsItemModel> trendingpostsItemList;

  TrendingPostsModel copyWith(
      {List<TrendingpostsItemModel>? trendingpostsItemList}) {
    return TrendingPostsModel(
      trendingpostsItemList:
          trendingpostsItemList ?? this.trendingpostsItemList,
    );
  }

  @override
  List<Object?> get props => [trendingpostsItemList];
}
