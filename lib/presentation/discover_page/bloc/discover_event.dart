// ignore_for_file: must_be_immutable

part of 'discover_bloc.dart';

@immutable
abstract class DiscoverEvent extends Equatable {}

class DiscoverInitialEvent extends DiscoverEvent {
  @override
  List<Object?> get props => [];
}
