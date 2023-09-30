import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipsefifteen3_item_model.dart';
import '../models/listsender_item_model.dart';
import 'package:aryan_s_application1/presentation/messages_page/models/messages_model.dart';
part 'messages_event.dart';
part 'messages_state.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc(MessagesState initialState) : super(initialState) {
    on<MessagesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessagesInitialEvent event,
    Emitter<MessagesState> emit,
  ) async {
    emit(state.copyWith(
        messagesModelObj: state.messagesModelObj?.copyWith(
            listellipsefifteen3ItemList: fillListellipsefifteen3ItemList(),
            listsenderItemList: fillListsenderItemList())));
  }

  List<Listellipsefifteen3ItemModel> fillListellipsefifteen3ItemList() {
    return List.generate(6, (index) => Listellipsefifteen3ItemModel());
  }

  List<ListsenderItemModel> fillListsenderItemList() {
    return List.generate(5, (index) => ListsenderItemModel());
  }
}
