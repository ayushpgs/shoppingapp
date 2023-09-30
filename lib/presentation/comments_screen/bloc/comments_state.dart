// ignore_for_file: must_be_immutable

part of 'comments_bloc.dart';

class CommentsState extends Equatable {
  CommentsState({
    this.frameThirtySixController,
    this.commentsModelObj,
  });

  TextEditingController? frameThirtySixController;

  CommentsModel? commentsModelObj;

  @override
  List<Object?> get props => [
        frameThirtySixController,
        commentsModelObj,
      ];
  CommentsState copyWith({
    TextEditingController? frameThirtySixController,
    CommentsModel? commentsModelObj,
  }) {
    return CommentsState(
      frameThirtySixController:
          frameThirtySixController ?? this.frameThirtySixController,
      commentsModelObj: commentsModelObj ?? this.commentsModelObj,
    );
  }
}
