import 'package:equatable/equatable.dart';
import 'discover_item_model.dart';

// ignore: must_be_immutable
class DiscoverModel extends Equatable {
  DiscoverModel({this.discoverItemList = const []});

  List<DiscoverItemModel> discoverItemList;

  DiscoverModel copyWith({List<DiscoverItemModel>? discoverItemList}) {
    return DiscoverModel(
      discoverItemList: discoverItemList ?? this.discoverItemList,
    );
  }

  @override
  List<Object?> get props => [discoverItemList];
}
