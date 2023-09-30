// ignore_for_file: must_be_immutable

part of 'page_view_bloc.dart';

class PageViewState extends Equatable {
  PageViewState({
    this.frameThirtySixController,
    this.pageViewModelObj,
  });

  TextEditingController? frameThirtySixController;

  PageViewModel? pageViewModelObj;

  @override
  List<Object?> get props => [
        frameThirtySixController,
        pageViewModelObj,
      ];
  PageViewState copyWith({
    TextEditingController? frameThirtySixController,
    PageViewModel? pageViewModelObj,
  }) {
    return PageViewState(
      frameThirtySixController:
          frameThirtySixController ?? this.frameThirtySixController,
      pageViewModelObj: pageViewModelObj ?? this.pageViewModelObj,
    );
  }
}
