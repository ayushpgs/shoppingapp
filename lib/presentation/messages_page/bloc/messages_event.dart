// ignore_for_file: must_be_immutable

part of 'messages_bloc.dart';

@immutable
abstract class MessagesEvent extends Equatable {}

class MessagesInitialEvent extends MessagesEvent {
  @override
  List<Object?> get props => [];
}
