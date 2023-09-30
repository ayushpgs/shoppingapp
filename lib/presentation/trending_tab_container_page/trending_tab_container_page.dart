import '../trending_tab_container_page/widgets/listellipsefifteen_item_widget.dart';
import 'bloc/trending_tab_container_bloc.dart';
import 'models/listellipsefifteen_item_model.dart';
import 'models/trending_tab_container_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/presentation/trending_page/trending_page.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:aryan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TrendingTabContainerPage extends StatefulWidget {
  @override
  _TrendingTabContainerPageState createState() =>
      _TrendingTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TrendingTabContainerBloc>(
      create: (context) => TrendingTabContainerBloc(TrendingTabContainerState(
        trendingTabContainerModelObj: TrendingTabContainerModel(),
      ))
        ..add(TrendingTabContainerInitialEvent()),
      child: TrendingTabContainerPage(),
    );
  }
}

class _TrendingTabContainerPageState extends State<TrendingTabContainerPage>
    with TickerProviderStateMixin {
  late TabController frame9031Controller;

  @override
  void initState() {
    super.initState();
    frame9031Controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            50,
          ),
          title: BlocSelector<TrendingTabContainerBloc,
              TrendingTabContainerState, TextEditingController?>(
            selector: (state) => state.group9021Controller,
            builder: (context, group9021Controller) {
              return AppbarSearchview(
                margin: getMargin(
                  left: 16,
                ),
                hintText: "lbl_search".tr,
                controller: group9021Controller,
              );
            },
          ),
          actions: [
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse1440x40,
              margin: getMargin(
                left: 16,
                top: 5,
                right: 19,
                bottom: 5,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  113,
                ),
                child: BlocSelector<TrendingTabContainerBloc,
                    TrendingTabContainerState, TrendingTabContainerModel?>(
                  selector: (state) => state.trendingTabContainerModelObj,
                  builder: (context, trendingTabContainerModelObj) {
                    return ListView.separated(
                      padding: getPadding(
                        left: 16,
                        top: 25,
                        right: 14,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            16,
                          ),
                        );
                      },
                      itemCount: trendingTabContainerModelObj
                              ?.listellipsefifteenItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        ListellipsefifteenItemModel model =
                            trendingTabContainerModelObj
                                    ?.listellipsefifteenItemList[index] ??
                                ListellipsefifteenItemModel();
                        return ListellipsefifteenItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: getVerticalSize(
                  30,
                ),
                width: getHorizontalSize(
                  398,
                ),
                margin: getMargin(
                  top: 30,
                ),
                child: TabBar(
                  controller: frame9031Controller,
                  labelColor: ColorConstant.deepPurpleA200,
                  unselectedLabelColor: ColorConstant.deepPurple200,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_trending".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_latest".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_discover".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_daily_new".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  548,
                ),
                child: TabBarView(
                  controller: frame9031Controller,
                  children: [
                    TrendingPage.builder(context),
                    TrendingPage.builder(context),
                    TrendingPage.builder(context),
                    TrendingPage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
