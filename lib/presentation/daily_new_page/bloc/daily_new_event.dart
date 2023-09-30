// ignore_for_file: must_be_immutable

part of 'daily_new_bloc.dart';

@immutable
abstract class DailyNewEvent extends Equatable {}

class DailyNewInitialEvent extends DailyNewEvent {
  @override
  List<Object?> get props => [];
}
