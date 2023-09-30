// ignore_for_file: must_be_immutable

part of 'live_bloc.dart';

class LiveState extends Equatable {
  LiveState({
    this.frameThirtySixController,
    this.liveModelObj,
  });

  TextEditingController? frameThirtySixController;

  LiveModel? liveModelObj;

  @override
  List<Object?> get props => [
        frameThirtySixController,
        liveModelObj,
      ];
  LiveState copyWith({
    TextEditingController? frameThirtySixController,
    LiveModel? liveModelObj,
  }) {
    return LiveState(
      frameThirtySixController:
          frameThirtySixController ?? this.frameThirtySixController,
      liveModelObj: liveModelObj ?? this.liveModelObj,
    );
  }
}
