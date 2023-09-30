import 'package:equatable/equatable.dart';
import 'listsend_item_model.dart';
import 'listellipsetwelve_item_model.dart';

// ignore: must_be_immutable
class StoriesAndTweetsModel extends Equatable {
  StoriesAndTweetsModel(
      {this.listsendItemList = const [],
      this.listellipsetwelveItemList = const []});

  List<ListsendItemModel> listsendItemList;

  List<ListellipsetwelveItemModel> listellipsetwelveItemList;

  StoriesAndTweetsModel copyWith(
      {List<ListsendItemModel>? listsendItemList,
      List<ListellipsetwelveItemModel>? listellipsetwelveItemList}) {
    return StoriesAndTweetsModel(
      listsendItemList: listsendItemList ?? this.listsendItemList,
      listellipsetwelveItemList:
          listellipsetwelveItemList ?? this.listellipsetwelveItemList,
    );
  }

  @override
  List<Object?> get props => [listsendItemList, listellipsetwelveItemList];
}
