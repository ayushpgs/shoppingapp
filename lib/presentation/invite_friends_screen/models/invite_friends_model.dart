import 'package:equatable/equatable.dart';
import 'invitefriends_item_model.dart';

// ignore: must_be_immutable
class InviteFriendsModel extends Equatable {
  InviteFriendsModel({this.invitefriendsItemList = const []});

  List<InvitefriendsItemModel> invitefriendsItemList;

  InviteFriendsModel copyWith(
      {List<InvitefriendsItemModel>? invitefriendsItemList}) {
    return InviteFriendsModel(
      invitefriendsItemList:
          invitefriendsItemList ?? this.invitefriendsItemList,
    );
  }

  @override
  List<Object?> get props => [invitefriendsItemList];
}
