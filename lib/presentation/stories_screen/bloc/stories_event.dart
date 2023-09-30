// ignore_for_file: must_be_immutable

part of 'stories_bloc.dart';

@immutable
abstract class StoriesEvent extends Equatable {}

class StoriesInitialEvent extends StoriesEvent {
  @override
  List<Object?> get props => [];
}
