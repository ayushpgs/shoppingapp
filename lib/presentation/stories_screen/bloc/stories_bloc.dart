import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipsefifteen1_item_model.dart';
import '../models/listnineteen1_item_model.dart';
import 'package:aryan_s_application1/widgets/custom_bottom_bar.dart';
import 'package:aryan_s_application1/presentation/stories_screen/models/stories_model.dart';
part 'stories_event.dart';
part 'stories_state.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  StoriesBloc(StoriesState initialState) : super(initialState) {
    on<StoriesInitialEvent>(_onInitialize);
  }

  List<Listellipsefifteen1ItemModel> fillListellipsefifteen1ItemList() {
    return List.generate(5, (index) => Listellipsefifteen1ItemModel());
  }

  List<Listnineteen1ItemModel> fillListnineteen1ItemList() {
    return List.generate(3, (index) => Listnineteen1ItemModel());
  }

  _onInitialize(
    StoriesInitialEvent event,
    Emitter<StoriesState> emit,
  ) async {
    emit(state.copyWith(
      group9078Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        storiesModelObj: state.storiesModelObj?.copyWith(
      listellipsefifteen1ItemList: fillListellipsefifteen1ItemList(),
      listnineteen1ItemList: fillListnineteen1ItemList(),
    )));
  }
}
