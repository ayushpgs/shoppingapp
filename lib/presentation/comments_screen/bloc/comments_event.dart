// ignore_for_file: must_be_immutable

part of 'comments_bloc.dart';

@immutable
abstract class CommentsEvent extends Equatable {}

class CommentsInitialEvent extends CommentsEvent {
  @override
  List<Object?> get props => [];
}
