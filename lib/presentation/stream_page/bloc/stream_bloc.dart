import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stream_item_model.dart';
import 'package:aryan_s_application1/presentation/stream_page/models/stream_model.dart';
part 'stream_event.dart';
part 'stream_state.dart';

class StreamBloc extends Bloc<StreamEvent, StreamState> {
  StreamBloc(StreamState initialState) : super(initialState) {
    on<StreamInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StreamInitialEvent event,
    Emitter<StreamState> emit,
  ) async {
    emit(state.copyWith(
        streamModelObj: state.streamModelObj?.copyWith(
      streamItemList: fillStreamItemList(),
    )));
  }

  List<StreamItemModel> fillStreamItemList() {
    return List.generate(2, (index) => StreamItemModel());
  }
}
