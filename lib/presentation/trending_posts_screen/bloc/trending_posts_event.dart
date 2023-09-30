// ignore_for_file: must_be_immutable

part of 'trending_posts_bloc.dart';

@immutable
abstract class TrendingPostsEvent extends Equatable {}

class TrendingPostsInitialEvent extends TrendingPostsEvent {
  @override
  List<Object?> get props => [];
}
