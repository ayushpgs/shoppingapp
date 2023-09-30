// ignore_for_file: must_be_immutable

part of 'account_details_bloc.dart';

@immutable
abstract class AccountDetailsEvent extends Equatable {}

class AccountDetailsInitialEvent extends AccountDetailsEvent {
  @override
  List<Object?> get props => [];
}
