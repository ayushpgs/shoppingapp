// ignore_for_file: must_be_immutable

part of 'for_you_tab_container_bloc.dart';

class ForYouTabContainerState extends Equatable {
  ForYouTabContainerState({this.forYouTabContainerModelObj});

  ForYouTabContainerModel? forYouTabContainerModelObj;

  @override
  List<Object?> get props => [
        forYouTabContainerModelObj,
      ];
  ForYouTabContainerState copyWith(
      {ForYouTabContainerModel? forYouTabContainerModelObj}) {
    return ForYouTabContainerState(
      forYouTabContainerModelObj:
          forYouTabContainerModelObj ?? this.forYouTabContainerModelObj,
    );
  }
}
