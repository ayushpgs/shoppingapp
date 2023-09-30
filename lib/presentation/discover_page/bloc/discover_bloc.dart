import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/discover_item_model.dart';
import 'package:aryan_s_application1/presentation/discover_page/models/discover_model.dart';
part 'discover_event.dart';
part 'discover_state.dart';

class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  DiscoverBloc(DiscoverState initialState) : super(initialState) {
    on<DiscoverInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DiscoverInitialEvent event,
    Emitter<DiscoverState> emit,
  ) async {
    emit(state.copyWith(
        discoverModelObj: state.discoverModelObj?.copyWith(
      discoverItemList: fillDiscoverItemList(),
    )));
  }

  List<DiscoverItemModel> fillDiscoverItemList() {
    return List.generate(3, (index) => DiscoverItemModel());
  }
}
