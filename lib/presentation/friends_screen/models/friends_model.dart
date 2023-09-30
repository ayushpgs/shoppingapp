import 'package:equatable/equatable.dart';
import 'friends_item_model.dart';

// ignore: must_be_immutable
class FriendsModel extends Equatable {
  FriendsModel({this.friendsItemList = const []});

  List<FriendsItemModel> friendsItemList;

  FriendsModel copyWith({List<FriendsItemModel>? friendsItemList}) {
    return FriendsModel(
      friendsItemList: friendsItemList ?? this.friendsItemList,
    );
  }

  @override
  List<Object?> get props => [friendsItemList];
}
