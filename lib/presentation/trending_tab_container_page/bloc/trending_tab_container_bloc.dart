import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipsefifteen_item_model.dart';
import 'package:aryan_s_application1/presentation/trending_tab_container_page/models/trending_tab_container_model.dart';
part 'trending_tab_container_event.dart';
part 'trending_tab_container_state.dart';

class TrendingTabContainerBloc
    extends Bloc<TrendingTabContainerEvent, TrendingTabContainerState> {
  TrendingTabContainerBloc(TrendingTabContainerState initialState)
      : super(initialState) {
    on<TrendingTabContainerInitialEvent>(_onInitialize);
  }

  List<ListellipsefifteenItemModel> fillListellipsefifteenItemList() {
    return List.generate(5, (index) => ListellipsefifteenItemModel());
  }

  _onInitialize(
    TrendingTabContainerInitialEvent event,
    Emitter<TrendingTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      group9021Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        trendingTabContainerModelObj:
            state.trendingTabContainerModelObj?.copyWith(
      listellipsefifteenItemList: fillListellipsefifteenItemList(),
    )));
  }
}
