import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/trending_item_model.dart';
import 'package:aryan_s_application1/presentation/trending_page/models/trending_model.dart';
part 'trending_event.dart';
part 'trending_state.dart';

class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  TrendingBloc(TrendingState initialState) : super(initialState) {
    on<TrendingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingInitialEvent event,
    Emitter<TrendingState> emit,
  ) async {
    emit(state.copyWith(
        trendingModelObj: state.trendingModelObj?.copyWith(
      trendingItemList: fillTrendingItemList(),
    )));
  }

  List<TrendingItemModel> fillTrendingItemList() {
    return List.generate(2, (index) => TrendingItemModel());
  }
}
