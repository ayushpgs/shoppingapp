// ignore_for_file: must_be_immutable

part of 'trending_container_bloc.dart';

class TrendingContainerState extends Equatable {
  TrendingContainerState({
    this.id,
    this.trendingContainerModelObj,
  });

  TrendingContainerModel? trendingContainerModelObj;

  var id;

  @override
  List<Object?> get props => [
        id,
        trendingContainerModelObj,
      ];
  TrendingContainerState copyWith({
    var id,
    TrendingContainerModel? trendingContainerModelObj,
  }) {
    return TrendingContainerState(
      id: id ?? this.id,
      trendingContainerModelObj:
          trendingContainerModelObj ?? this.trendingContainerModelObj,
    );
  }
}
