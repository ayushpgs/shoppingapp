import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/trendingposts_item_model.dart';
import 'package:aryan_s_application1/widgets/custom_bottom_bar.dart';
import 'package:aryan_s_application1/presentation/trending_posts_screen/models/trending_posts_model.dart';
part 'trending_posts_event.dart';
part 'trending_posts_state.dart';

class TrendingPostsBloc extends Bloc<TrendingPostsEvent, TrendingPostsState> {
  TrendingPostsBloc(TrendingPostsState initialState) : super(initialState) {
    on<TrendingPostsInitialEvent>(_onInitialize);
  }

  List<TrendingpostsItemModel> fillTrendingpostsItemList() {
    return List.generate(4, (index) => TrendingpostsItemModel());
  }

  _onInitialize(
    TrendingPostsInitialEvent event,
    Emitter<TrendingPostsState> emit,
  ) async {
    emit(state.copyWith(group9088Controller: TextEditingController()));
    emit(state.copyWith(
        trendingPostsModelObj: state.trendingPostsModelObj
            ?.copyWith(trendingpostsItemList: fillTrendingpostsItemList())));
  }
}
