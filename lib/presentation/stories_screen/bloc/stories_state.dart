// ignore_for_file: must_be_immutable

part of 'stories_bloc.dart';

class StoriesState extends Equatable {
  StoriesState({
    this.group9078Controller,
    this.storiesModelObj,
  });

  TextEditingController? group9078Controller;

  StoriesModel? storiesModelObj;

  @override
  List<Object?> get props => [
        group9078Controller,
        storiesModelObj,
      ];
  StoriesState copyWith({
    TextEditingController? group9078Controller,
    StoriesModel? storiesModelObj,
  }) {
    return StoriesState(
      group9078Controller: group9078Controller ?? this.group9078Controller,
      storiesModelObj: storiesModelObj ?? this.storiesModelObj,
    );
  }
}
