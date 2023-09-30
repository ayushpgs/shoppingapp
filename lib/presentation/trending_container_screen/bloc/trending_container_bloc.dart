import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aryan_s_application1/widgets/custom_bottom_bar.dart';
import 'package:aryan_s_application1/presentation/trending_container_screen/models/trending_container_model.dart';
part 'trending_container_event.dart';
part 'trending_container_state.dart';

class TrendingContainerBloc
    extends Bloc<TrendingContainerEvent, TrendingContainerState> {
  TrendingContainerBloc(TrendingContainerState initialState)
      : super(initialState) {
    on<TrendingContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingContainerInitialEvent event,
    Emitter<TrendingContainerState> emit,
  ) async {}
}
