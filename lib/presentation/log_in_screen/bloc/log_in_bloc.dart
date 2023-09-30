import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aryan_s_application1/presentation/log_in_screen/models/log_in_model.dart';
import 'package:aryan_s_application1/data/models/login/post_login_resp.dart';
import 'package:aryan_s_application1/data/models/login/post_login_req.dart';
import 'dart:async';
import 'package:aryan_s_application1/data/repository/repository.dart';
part 'log_in_event.dart';
part 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(LogInState initialState) : super(initialState) {
    on<LogInInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<CreateLoginEvent>(_callCreateLogin);
  }

  final _repository = Repository();

  var postLoginResp = PostLoginResp();

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LogInState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    LogInInitialEvent event,
    Emitter<LogInState> emit,
  ) async {
    emit(state.copyWith(
        emailidController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true));
  }

  FutureOr<void> _callCreateLogin(
    CreateLoginEvent event,
    Emitter<LogInState> emit,
  ) async {
    var postLoginReq = PostLoginReq(
      username: state.emailidController?.text,
      password: state.passwordController?.text,
    );
    await _repository.createLogin(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postLoginReq.toJson(),
    ).then((value) async {
      postLoginResp = value;
      _onCreateLoginSuccess(value, emit);
      event.onCreateLoginEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onCreateLoginError();
      event.onCreateLoginEventError.call();
    });
  }

  void _onCreateLoginSuccess(
    PostLoginResp resp,
    Emitter<LogInState> emit,
  ) {
    PrefUtils().setToken(resp.data!.token!.toString());
    emit(
      state.copyWith(
        logInModelObj: state.logInModelObj?.copyWith(),
      ),
    );
  }

  void _onCreateLoginError() {
    //implement error method body...
  }
}
