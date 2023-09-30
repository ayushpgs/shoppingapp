import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aryan_s_application1/presentation/for_you_tab_container_screen/models/for_you_tab_container_model.dart';
part 'for_you_tab_container_event.dart';
part 'for_you_tab_container_state.dart';

class ForYouTabContainerBloc
    extends Bloc<ForYouTabContainerEvent, ForYouTabContainerState> {
  ForYouTabContainerBloc(ForYouTabContainerState initialState)
      : super(initialState) {
    on<ForYouTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForYouTabContainerInitialEvent event,
    Emitter<ForYouTabContainerState> emit,
  ) async {}
}
