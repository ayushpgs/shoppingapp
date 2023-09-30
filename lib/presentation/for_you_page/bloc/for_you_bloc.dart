import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/foryou_item_model.dart';
import 'package:aryan_s_application1/presentation/for_you_page/models/for_you_model.dart';
part 'for_you_event.dart';
part 'for_you_state.dart';

class ForYouBloc extends Bloc<ForYouEvent, ForYouState> {
  ForYouBloc(ForYouState initialState) : super(initialState) {
    on<ForYouInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForYouInitialEvent event,
    Emitter<ForYouState> emit,
  ) async {
    emit(state.copyWith(
        forYouModelObj: state.forYouModelObj?.copyWith(
      foryouItemList: fillForyouItemList(),
    )));
  }

  List<ForyouItemModel> fillForyouItemList() {
    return List.generate(3, (index) => ForyouItemModel());
  }
}
