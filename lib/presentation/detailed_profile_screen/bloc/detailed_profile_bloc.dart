import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aryan_s_application1/widgets/custom_bottom_bar.dart';
import 'package:aryan_s_application1/presentation/detailed_profile_screen/models/detailed_profile_model.dart';
part 'detailed_profile_event.dart';
part 'detailed_profile_state.dart';

class DetailedProfileBloc
    extends Bloc<DetailedProfileEvent, DetailedProfileState> {
  DetailedProfileBloc(DetailedProfileState initialState) : super(initialState) {
    on<DetailedProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailedProfileInitialEvent event,
    Emitter<DetailedProfileState> emit,
  ) async {}
}
