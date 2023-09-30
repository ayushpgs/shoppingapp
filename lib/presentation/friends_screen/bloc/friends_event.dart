// ignore_for_file: must_be_immutable

part of 'friends_bloc.dart';

@immutable
abstract class FriendsEvent extends Equatable {}

class FriendsInitialEvent extends FriendsEvent {
  @override
  List<Object?> get props => [];
}
