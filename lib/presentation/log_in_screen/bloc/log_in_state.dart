// ignore_for_file: must_be_immutable

part of 'log_in_bloc.dart';

class LogInState extends Equatable {
  LogInState({
    this.emailidController,
    this.passwordController,
    this.isShowPassword = true,
    this.logInModelObj,
  });

  TextEditingController? emailidController;

  TextEditingController? passwordController;

  LogInModel? logInModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailidController,
        passwordController,
        isShowPassword,
        logInModelObj,
      ];
  LogInState copyWith({
    TextEditingController? emailidController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LogInModel? logInModelObj,
  }) {
    return LogInState(
      emailidController: emailidController ?? this.emailidController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      logInModelObj: logInModelObj ?? this.logInModelObj,
    );
  }
}
