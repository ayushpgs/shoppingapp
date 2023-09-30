// ignore_for_file: must_be_immutable

part of 'messages_bloc.dart';

class MessagesState extends Equatable {
  MessagesState({this.messagesModelObj});

  MessagesModel? messagesModelObj;

  @override
  List<Object?> get props => [
        messagesModelObj,
      ];
  MessagesState copyWith({MessagesModel? messagesModelObj}) {
    return MessagesState(
      messagesModelObj: messagesModelObj ?? this.messagesModelObj,
    );
  }
}
