// ignore_for_file: must_be_immutable

part of 'page_view_bloc.dart';

@immutable
abstract class PageViewEvent extends Equatable {}

class PageViewInitialEvent extends PageViewEvent {
  @override
  List<Object?> get props => [];
}
