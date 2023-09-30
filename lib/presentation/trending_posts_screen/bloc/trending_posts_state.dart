// ignore_for_file: must_be_immutable

part of 'trending_posts_bloc.dart';

class TrendingPostsState extends Equatable {
  TrendingPostsState({
    this.group9088Controller,
    this.trendingPostsModelObj,
  });

  TextEditingController? group9088Controller;

  TrendingPostsModel? trendingPostsModelObj;

  @override
  List<Object?> get props => [
        group9088Controller,
        trendingPostsModelObj,
      ];
  TrendingPostsState copyWith({
    TextEditingController? group9088Controller,
    TrendingPostsModel? trendingPostsModelObj,
  }) {
    return TrendingPostsState(
      group9088Controller: group9088Controller ?? this.group9088Controller,
      trendingPostsModelObj:
          trendingPostsModelObj ?? this.trendingPostsModelObj,
    );
  }
}
