import 'package:equatable/equatable.dart';
import 'trending_item_model.dart';

// ignore: must_be_immutable
class TrendingModel extends Equatable {
  TrendingModel({this.trendingItemList = const []});

  List<TrendingItemModel> trendingItemList;

  TrendingModel copyWith({List<TrendingItemModel>? trendingItemList}) {
    return TrendingModel(
      trendingItemList: trendingItemList ?? this.trendingItemList,
    );
  }

  @override
  List<Object?> get props => [trendingItemList];
}
