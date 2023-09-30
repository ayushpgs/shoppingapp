// ignore_for_file: must_be_immutable

part of 'detailed_profile_bloc.dart';

@immutable
abstract class DetailedProfileEvent extends Equatable {}

class DetailedProfileInitialEvent extends DetailedProfileEvent {
  @override
  List<Object?> get props => [];
}
