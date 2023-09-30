import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aryan_s_application1/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:aryan_s_application1/data/models/register/post_register_resp.dart';
import 'package:aryan_s_application1/data/models/register/post_register_req.dart';
import 'dart:async';
import 'package:aryan_s_application1/data/repository/repository.dart';
import 'package:aryan_s_application1/core/constants/role.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(SignUpState initialState) : super(initialState) {
    on<SignUpInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<CreateRegisterEvent>(_callCreateRegister);
  }

  final _repository = Repository();

  var postRegisterResp = PostRegisterResp();

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_female", "lbl_male"];
  }

  _onInitialize(
    SignUpInitialEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(
        frameThirtyController: TextEditingController(),
        frameThirtyFourController: TextEditingController(),
        frameThirtyFiveController: TextEditingController(),
        frameThirtySixController: TextEditingController(),
        frameThirtySevenController: TextEditingController(),
        radioGroup: ""));
    emit(state.copyWith(
        signUpModelObj:
            state.signUpModelObj?.copyWith(radioList: fillRadioList())));
  }

  FutureOr<void> _callCreateRegister(
    CreateRegisterEvent event,
    Emitter<SignUpState> emit,
  ) async {
    var postRegisterReq = PostRegisterReq(
      username: state.frameThirtyFiveController?.text,
      password: state.frameThirtyFourController?.text,
      email: state.frameThirtyFiveController?.text,
      name: state.frameThirtyController?.text,
      role: Role.user,
    );
    await _repository.createRegister(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postRegisterReq.toJson(),
    ).then((value) async {
      postRegisterResp = value;
      _onCreateRegisterSuccess(value, emit);
      event.onCreateRegisterEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onCreateRegisterError();
      event.onCreateRegisterEventError.call();
    });
  }

  void _onCreateRegisterSuccess(
    PostRegisterResp resp,
    Emitter<SignUpState> emit,
  ) {
    PrefUtils().setId(resp.data!.id!.toString());
    emit(
      state.copyWith(
        signUpModelObj: state.signUpModelObj?.copyWith(),
      ),
    );
  }

  void _onCreateRegisterError() {
    //implement error method body...
  }
}
