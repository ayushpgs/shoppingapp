// ignore_for_file: must_be_immutable

part of 'log_in_bloc.dart';

@immutable
abstract class LogInEvent extends Equatable {}

class LogInInitialEvent extends LogInEvent {
  @override
  List<Object?> get props => [];
}

class CreateLoginEvent extends LogInEvent {
  CreateLoginEvent({
    required this.onCreateLoginEventSuccess,
    required this.onCreateLoginEventError,
  });

  Function onCreateLoginEventSuccess;

  Function onCreateLoginEventError;

  @override
  List<Object?> get props => [
        onCreateLoginEventSuccess,
        onCreateLoginEventError,
      ];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends LogInEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
