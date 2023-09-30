import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/invitefriends_item_model.dart';
import 'package:aryan_s_application1/presentation/invite_friends_screen/models/invite_friends_model.dart';
part 'invite_friends_event.dart';
part 'invite_friends_state.dart';

class InviteFriendsBloc extends Bloc<InviteFriendsEvent, InviteFriendsState> {
  InviteFriendsBloc(InviteFriendsState initialState) : super(initialState) {
    on<InviteFriendsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InviteFriendsInitialEvent event,
    Emitter<InviteFriendsState> emit,
  ) async {
    emit(state.copyWith(
        inviteFriendsModelObj: state.inviteFriendsModelObj
            ?.copyWith(invitefriendsItemList: fillInvitefriendsItemList())));
  }

  List<InvitefriendsItemModel> fillInvitefriendsItemList() {
    return List.generate(9, (index) => InvitefriendsItemModel());
  }
}
