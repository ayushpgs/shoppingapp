// ignore_for_file: must_be_immutable

part of 'invite_friends_bloc.dart';

class InviteFriendsState extends Equatable {
  InviteFriendsState({this.inviteFriendsModelObj});

  InviteFriendsModel? inviteFriendsModelObj;

  @override
  List<Object?> get props => [
        inviteFriendsModelObj,
      ];
  InviteFriendsState copyWith({InviteFriendsModel? inviteFriendsModelObj}) {
    return InviteFriendsState(
      inviteFriendsModelObj:
          inviteFriendsModelObj ?? this.inviteFriendsModelObj,
    );
  }
}
