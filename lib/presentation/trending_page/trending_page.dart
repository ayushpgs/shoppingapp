import '../trending_page/widgets/trending_item_widget.dart';
import 'bloc/trending_bloc.dart';
import 'models/trending_item_model.dart';
import 'models/trending_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TrendingPage extends StatefulWidget {
  @override
  _TrendingPageState createState() => _TrendingPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TrendingBloc>(
      create: (context) => TrendingBloc(TrendingState(
        trendingModelObj: TrendingModel(),
      ))
        ..add(TrendingInitialEvent()),
      child: TrendingPage(),
    );
  }
}

class _TrendingPageState extends State<TrendingPage>
    with AutomaticKeepAliveClientMixin<TrendingPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 27,
                  right: 16,
                ),
                child:
                    BlocSelector<TrendingBloc, TrendingState, TrendingModel?>(
                  selector: (state) => state.trendingModelObj,
                  builder: (context, trendingModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            24,
                          ),
                        );
                      },
                      itemCount: trendingModelObj?.trendingItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        TrendingItemModel model =
                            trendingModelObj?.trendingItemList[index] ??
                                TrendingItemModel();
                        return TrendingItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
