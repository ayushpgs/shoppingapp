import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class SignUpModel extends Equatable {
  SignUpModel({this.radioList = const []});

  List<String> radioList;

  SignUpModel copyWith({List<String>? radioList}) {
    return SignUpModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
