// ignore_for_file: must_be_immutable

part of 'for_you_bloc.dart';

@immutable
abstract class ForYouEvent extends Equatable {}

class ForYouInitialEvent extends ForYouEvent {
  @override
  List<Object?> get props => [];
}
