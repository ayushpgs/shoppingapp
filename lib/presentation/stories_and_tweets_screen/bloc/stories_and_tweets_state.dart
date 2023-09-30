// ignore_for_file: must_be_immutable

part of 'stories_and_tweets_bloc.dart';

class StoriesAndTweetsState extends Equatable {
  StoriesAndTweetsState({
    this.group9088Controller,
    this.storiesAndTweetsModelObj,
  });

  TextEditingController? group9088Controller;

  StoriesAndTweetsModel? storiesAndTweetsModelObj;

  @override
  List<Object?> get props => [
        group9088Controller,
        storiesAndTweetsModelObj,
      ];
  StoriesAndTweetsState copyWith({
    TextEditingController? group9088Controller,
    StoriesAndTweetsModel? storiesAndTweetsModelObj,
  }) {
    return StoriesAndTweetsState(
      group9088Controller: group9088Controller ?? this.group9088Controller,
      storiesAndTweetsModelObj:
          storiesAndTweetsModelObj ?? this.storiesAndTweetsModelObj,
    );
  }
}
