import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listsend_item_model.dart';
import '../models/listellipsetwelve_item_model.dart';
import 'package:aryan_s_application1/presentation/stories_and_tweets_screen/models/stories_and_tweets_model.dart';
part 'stories_and_tweets_event.dart';
part 'stories_and_tweets_state.dart';

class StoriesAndTweetsBloc
    extends Bloc<StoriesAndTweetsEvent, StoriesAndTweetsState> {
  StoriesAndTweetsBloc(StoriesAndTweetsState initialState)
      : super(initialState) {
    on<StoriesAndTweetsInitialEvent>(_onInitialize);
  }

  List<ListsendItemModel> fillListsendItemList() {
    return List.generate(6, (index) => ListsendItemModel());
  }

  List<ListellipsetwelveItemModel> fillListellipsetwelveItemList() {
    return List.generate(2, (index) => ListellipsetwelveItemModel());
  }

  _onInitialize(
    StoriesAndTweetsInitialEvent event,
    Emitter<StoriesAndTweetsState> emit,
  ) async {
    emit(state.copyWith(group9088Controller: TextEditingController()));
    emit(state.copyWith(
        storiesAndTweetsModelObj: state.storiesAndTweetsModelObj?.copyWith(
            listsendItemList: fillListsendItemList(),
            listellipsetwelveItemList: fillListellipsetwelveItemList())));
  }
}
