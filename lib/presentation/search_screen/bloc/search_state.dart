// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

class SearchState extends Equatable {
  SearchState({
    this.group9116Controller,
    this.searchModelObj,
  });

  TextEditingController? group9116Controller;

  SearchModel? searchModelObj;

  @override
  List<Object?> get props => [
        group9116Controller,
        searchModelObj,
      ];
  SearchState copyWith({
    TextEditingController? group9116Controller,
    SearchModel? searchModelObj,
  }) {
    return SearchState(
      group9116Controller: group9116Controller ?? this.group9116Controller,
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}
