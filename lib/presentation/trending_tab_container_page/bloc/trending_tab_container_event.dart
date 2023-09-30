// ignore_for_file: must_be_immutable

part of 'trending_tab_container_bloc.dart';

@immutable
abstract class TrendingTabContainerEvent extends Equatable {}

class TrendingTabContainerInitialEvent extends TrendingTabContainerEvent {
  @override
  List<Object?> get props => [];
}
