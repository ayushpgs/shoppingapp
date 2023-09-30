import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aryan_s_application1/presentation/stream_tab_container_page/models/stream_tab_container_model.dart';
part 'stream_tab_container_event.dart';
part 'stream_tab_container_state.dart';

class StreamTabContainerBloc
    extends Bloc<StreamTabContainerEvent, StreamTabContainerState> {
  StreamTabContainerBloc(StreamTabContainerState initialState)
      : super(initialState) {
    on<StreamTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StreamTabContainerInitialEvent event,
    Emitter<StreamTabContainerState> emit,
  ) async {
    emit(state.copyWith(group9020Controller: TextEditingController()));
  }
}
