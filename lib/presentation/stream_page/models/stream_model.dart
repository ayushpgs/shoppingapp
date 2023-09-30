import 'package:equatable/equatable.dart';
import 'stream_item_model.dart';

// ignore: must_be_immutable
class StreamModel extends Equatable {
  StreamModel({this.streamItemList = const []});

  List<StreamItemModel> streamItemList;

  StreamModel copyWith({List<StreamItemModel>? streamItemList}) {
    return StreamModel(
      streamItemList: streamItemList ?? this.streamItemList,
    );
  }

  @override
  List<Object?> get props => [streamItemList];
}
