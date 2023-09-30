// ignore_for_file: must_be_immutable

part of 'chat_bloc.dart';

class ChatState extends Equatable {
  ChatState({
    this.actionController,
    this.chatModelObj,
  });

  TextEditingController? actionController;

  ChatModel? chatModelObj;

  @override
  List<Object?> get props => [
        actionController,
        chatModelObj,
      ];
  ChatState copyWith({
    TextEditingController? actionController,
    ChatModel? chatModelObj,
  }) {
    return ChatState(
      actionController: actionController ?? this.actionController,
      chatModelObj: chatModelObj ?? this.chatModelObj,
    );
  }
}
