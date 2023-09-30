import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/friends_item_model.dart';
import 'package:aryan_s_application1/presentation/friends_screen/models/friends_model.dart';
part 'friends_event.dart';
part 'friends_state.dart';

class FriendsBloc extends Bloc<FriendsEvent, FriendsState> {
  FriendsBloc(FriendsState initialState) : super(initialState) {
    on<FriendsInitialEvent>(_onInitialize);
  }

  List<FriendsItemModel> fillFriendsItemList() {
    return List.generate(7, (index) => FriendsItemModel());
  }

  _onInitialize(
    FriendsInitialEvent event,
    Emitter<FriendsState> emit,
  ) async {
    emit(state.copyWith(group9116Controller: TextEditingController()));
    emit(state.copyWith(
        friendsModelObj: state.friendsModelObj
            ?.copyWith(friendsItemList: fillFriendsItemList())));
  }
}
