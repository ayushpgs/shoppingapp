import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aryan_s_application1/presentation/account_view_screen/models/account_view_model.dart';
part 'account_view_event.dart';
part 'account_view_state.dart';

class AccountViewBloc extends Bloc<AccountViewEvent, AccountViewState> {
  AccountViewBloc(AccountViewState initialState) : super(initialState) {
    on<AccountViewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountViewInitialEvent event,
    Emitter<AccountViewState> emit,
  ) async {}
}
