// ignore_for_file: must_be_immutable

part of 'trending_bloc.dart';

@immutable
abstract class TrendingEvent extends Equatable {}

class TrendingInitialEvent extends TrendingEvent {
  @override
  List<Object?> get props => [];
}
