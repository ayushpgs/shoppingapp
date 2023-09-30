// ignore_for_file: must_be_immutable

part of 'trending_container_bloc.dart';

@immutable
abstract class TrendingContainerEvent extends Equatable {}

class TrendingContainerInitialEvent extends TrendingContainerEvent {
  @override
  List<Object?> get props => [];
}
