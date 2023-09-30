import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aryan_s_application1/presentation/page_view_screen/models/page_view_model.dart';
part 'page_view_event.dart';
part 'page_view_state.dart';

class PageViewBloc extends Bloc<PageViewEvent, PageViewState> {
  PageViewBloc(PageViewState initialState) : super(initialState) {
    on<PageViewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageViewInitialEvent event,
    Emitter<PageViewState> emit,
  ) async {
    emit(state.copyWith(frameThirtySixController: TextEditingController()));
  }
}
