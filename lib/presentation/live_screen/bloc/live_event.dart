// ignore_for_file: must_be_immutable

part of 'live_bloc.dart';

@immutable
abstract class LiveEvent extends Equatable {}

class LiveInitialEvent extends LiveEvent {
  @override
  List<Object?> get props => [];
}
