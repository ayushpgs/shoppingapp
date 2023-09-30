// ignore_for_file: must_be_immutable

part of 'stream_tab_container_bloc.dart';

class StreamTabContainerState extends Equatable {
  StreamTabContainerState({
    this.group9020Controller,
    this.streamTabContainerModelObj,
  });

  TextEditingController? group9020Controller;

  StreamTabContainerModel? streamTabContainerModelObj;

  @override
  List<Object?> get props => [
        group9020Controller,
        streamTabContainerModelObj,
      ];
  StreamTabContainerState copyWith({
    TextEditingController? group9020Controller,
    StreamTabContainerModel? streamTabContainerModelObj,
  }) {
    return StreamTabContainerState(
      group9020Controller: group9020Controller ?? this.group9020Controller,
      streamTabContainerModelObj:
          streamTabContainerModelObj ?? this.streamTabContainerModelObj,
    );
  }
}
