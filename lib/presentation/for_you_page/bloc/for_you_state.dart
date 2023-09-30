// ignore_for_file: must_be_immutable

part of 'for_you_bloc.dart';

class ForYouState extends Equatable {
  ForYouState({this.forYouModelObj});

  ForYouModel? forYouModelObj;

  @override
  List<Object?> get props => [
        forYouModelObj,
      ];
  ForYouState copyWith({ForYouModel? forYouModelObj}) {
    return ForYouState(
      forYouModelObj: forYouModelObj ?? this.forYouModelObj,
    );
  }
}
