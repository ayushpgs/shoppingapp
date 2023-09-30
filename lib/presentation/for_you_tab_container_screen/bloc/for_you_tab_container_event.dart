// ignore_for_file: must_be_immutable

part of 'for_you_tab_container_bloc.dart';

@immutable
abstract class ForYouTabContainerEvent extends Equatable {}

class ForYouTabContainerInitialEvent extends ForYouTabContainerEvent {
  @override
  List<Object?> get props => [];
}
