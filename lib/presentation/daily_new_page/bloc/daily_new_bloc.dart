import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listnineteen_item_model.dart';
import '../models/listfive_item_model.dart';
import 'package:aryan_s_application1/presentation/daily_new_page/models/daily_new_model.dart';
part 'daily_new_event.dart';
part 'daily_new_state.dart';

class DailyNewBloc extends Bloc<DailyNewEvent, DailyNewState> {
  DailyNewBloc(DailyNewState initialState) : super(initialState) {
    on<DailyNewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DailyNewInitialEvent event,
    Emitter<DailyNewState> emit,
  ) async {
    emit(state.copyWith(
        dailyNewModelObj: state.dailyNewModelObj?.copyWith(
      listnineteenItemList: fillListnineteenItemList(),
      listfiveItemList: fillListfiveItemList(),
    )));
  }

  List<ListnineteenItemModel> fillListnineteenItemList() {
    return List.generate(3, (index) => ListnineteenItemModel());
  }

  List<ListfiveItemModel> fillListfiveItemList() {
    return List.generate(2, (index) => ListfiveItemModel());
  }
}
