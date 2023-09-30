import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listeight_item_model.dart';
import '../models/listellipsefifteen2_item_model.dart';
import 'package:aryan_s_application1/presentation/account_details_screen/models/account_details_model.dart';
part 'account_details_event.dart';
part 'account_details_state.dart';

class AccountDetailsBloc
    extends Bloc<AccountDetailsEvent, AccountDetailsState> {
  AccountDetailsBloc(AccountDetailsState initialState) : super(initialState) {
    on<AccountDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountDetailsInitialEvent event,
    Emitter<AccountDetailsState> emit,
  ) async {
    emit(state.copyWith(
        accountDetailsModelObj: state.accountDetailsModelObj?.copyWith(
            listeightItemList: fillListeightItemList(),
            listellipsefifteen2ItemList: fillListellipsefifteen2ItemList())));
  }

  List<ListeightItemModel> fillListeightItemList() {
    return List.generate(3, (index) => ListeightItemModel());
  }

  List<Listellipsefifteen2ItemModel> fillListellipsefifteen2ItemList() {
    return List.generate(5, (index) => Listellipsefifteen2ItemModel());
  }
}
