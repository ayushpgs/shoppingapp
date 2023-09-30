// ignore_for_file: must_be_immutable

part of 'friends_bloc.dart';

class FriendsState extends Equatable {
  FriendsState({
    this.group9116Controller,
    this.friendsModelObj,
  });

  TextEditingController? group9116Controller;

  FriendsModel? friendsModelObj;

  @override
  List<Object?> get props => [
        group9116Controller,
        friendsModelObj,
      ];
  FriendsState copyWith({
    TextEditingController? group9116Controller,
    FriendsModel? friendsModelObj,
  }) {
    return FriendsState(
      group9116Controller: group9116Controller ?? this.group9116Controller,
      friendsModelObj: friendsModelObj ?? this.friendsModelObj,
    );
  }
}
