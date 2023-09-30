// ignore_for_file: must_be_immutable

part of 'stream_bloc.dart';

@immutable
abstract class StreamEvent extends Equatable {}

class StreamInitialEvent extends StreamEvent {
  @override
  List<Object?> get props => [];
}
