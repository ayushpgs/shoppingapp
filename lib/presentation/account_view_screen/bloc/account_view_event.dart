// ignore_for_file: must_be_immutable

part of 'account_view_bloc.dart';

@immutable
abstract class AccountViewEvent extends Equatable {}

class AccountViewInitialEvent extends AccountViewEvent {
  @override
  List<Object?> get props => [];
}
