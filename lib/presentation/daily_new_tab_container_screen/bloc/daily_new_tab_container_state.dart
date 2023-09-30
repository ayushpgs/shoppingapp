// ignore_for_file: must_be_immutable

part of 'daily_new_tab_container_bloc.dart';

class DailyNewTabContainerState extends Equatable {
  DailyNewTabContainerState({
    this.group9021Controller,
    this.dailyNewTabContainerModelObj,
  });

  TextEditingController? group9021Controller;

  DailyNewTabContainerModel? dailyNewTabContainerModelObj;

  @override
  List<Object?> get props => [
        group9021Controller,
        dailyNewTabContainerModelObj,
      ];
  DailyNewTabContainerState copyWith({
    TextEditingController? group9021Controller,
    DailyNewTabContainerModel? dailyNewTabContainerModelObj,
  }) {
    return DailyNewTabContainerState(
      group9021Controller: group9021Controller ?? this.group9021Controller,
      dailyNewTabContainerModelObj:
          dailyNewTabContainerModelObj ?? this.dailyNewTabContainerModelObj,
    );
  }
}
