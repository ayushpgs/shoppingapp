// ignore_for_file: must_be_immutable

part of 'trending_tab_container_bloc.dart';

class TrendingTabContainerState extends Equatable {
  TrendingTabContainerState({
    this.group9021Controller,
    this.trendingTabContainerModelObj,
  });

  TextEditingController? group9021Controller;

  TrendingTabContainerModel? trendingTabContainerModelObj;

  @override
  List<Object?> get props => [
        group9021Controller,
        trendingTabContainerModelObj,
      ];
  TrendingTabContainerState copyWith({
    TextEditingController? group9021Controller,
    TrendingTabContainerModel? trendingTabContainerModelObj,
  }) {
    return TrendingTabContainerState(
      group9021Controller: group9021Controller ?? this.group9021Controller,
      trendingTabContainerModelObj:
          trendingTabContainerModelObj ?? this.trendingTabContainerModelObj,
    );
  }
}
