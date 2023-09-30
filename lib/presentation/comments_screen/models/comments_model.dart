import 'package:equatable/equatable.dart';
import 'comments_item_model.dart';

// ignore: must_be_immutable
class CommentsModel extends Equatable {
  CommentsModel({this.commentsItemList = const []});

  List<CommentsItemModel> commentsItemList;

  CommentsModel copyWith({List<CommentsItemModel>? commentsItemList}) {
    return CommentsModel(
      commentsItemList: commentsItemList ?? this.commentsItemList,
    );
  }

  @override
  List<Object?> get props => [commentsItemList];
}
