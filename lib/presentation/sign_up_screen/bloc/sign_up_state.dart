// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({
    this.frameThirtyController,
    this.frameThirtyFourController,
    this.frameThirtyFiveController,
    this.frameThirtySixController,
    this.frameThirtySevenController,
    this.radioGroup = "",
    this.signUpModelObj,
  });

  TextEditingController? frameThirtyController;

  TextEditingController? frameThirtyFourController;

  TextEditingController? frameThirtyFiveController;

  TextEditingController? frameThirtySixController;

  TextEditingController? frameThirtySevenController;

  SignUpModel? signUpModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        frameThirtyController,
        frameThirtyFourController,
        frameThirtyFiveController,
        frameThirtySixController,
        frameThirtySevenController,
        radioGroup,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? frameThirtyController,
    TextEditingController? frameThirtyFourController,
    TextEditingController? frameThirtyFiveController,
    TextEditingController? frameThirtySixController,
    TextEditingController? frameThirtySevenController,
    String? radioGroup,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      frameThirtyController:
          frameThirtyController ?? this.frameThirtyController,
      frameThirtyFourController:
          frameThirtyFourController ?? this.frameThirtyFourController,
      frameThirtyFiveController:
          frameThirtyFiveController ?? this.frameThirtyFiveController,
      frameThirtySixController:
          frameThirtySixController ?? this.frameThirtySixController,
      frameThirtySevenController:
          frameThirtySevenController ?? this.frameThirtySevenController,
      radioGroup: radioGroup ?? this.radioGroup,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
