// ignore_for_file: must_be_immutable

part of 'invite_friends_bloc.dart';

@immutable
abstract class InviteFriendsEvent extends Equatable {}

class InviteFriendsInitialEvent extends InviteFriendsEvent {
  @override
  List<Object?> get props => [];
}
