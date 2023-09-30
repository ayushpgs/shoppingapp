// ignore_for_file: must_be_immutable

part of 'daily_new_tab_container_bloc.dart';

@immutable
abstract class DailyNewTabContainerEvent extends Equatable {}

class DailyNewTabContainerInitialEvent extends DailyNewTabContainerEvent {
  @override
  List<Object?> get props => [];
}
