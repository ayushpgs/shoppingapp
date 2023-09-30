// ignore_for_file: must_be_immutable

part of 'stories_and_tweets_bloc.dart';

@immutable
abstract class StoriesAndTweetsEvent extends Equatable {}

class StoriesAndTweetsInitialEvent extends StoriesAndTweetsEvent {
  @override
  List<Object?> get props => [];
}
