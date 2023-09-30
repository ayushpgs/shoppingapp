// ignore_for_file: must_be_immutable

part of 'stream_tab_container_bloc.dart';

@immutable
abstract class StreamTabContainerEvent extends Equatable {}

class StreamTabContainerInitialEvent extends StreamTabContainerEvent {
  @override
  List<Object?> get props => [];
}
