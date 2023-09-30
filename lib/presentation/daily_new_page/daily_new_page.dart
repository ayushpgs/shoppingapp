import '../daily_new_page/widgets/listfive_item_widget.dart';
import '../daily_new_page/widgets/listnineteen_item_widget.dart';
import 'bloc/daily_new_bloc.dart';
import 'models/daily_new_model.dart';
import 'models/listfive_item_model.dart';
import 'models/listnineteen_item_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DailyNewPage extends StatefulWidget {
  @override
  _DailyNewPageState createState() => _DailyNewPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DailyNewBloc>(
      create: (context) => DailyNewBloc(DailyNewState(
        dailyNewModelObj: DailyNewModel(),
      ))
        ..add(DailyNewInitialEvent()),
      child: DailyNewPage(),
    );
  }
}

class _DailyNewPageState extends State<DailyNewPage>
    with AutomaticKeepAliveClientMixin<DailyNewPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 32,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(
                            179,
                          ),
                          child: BlocSelector<DailyNewBloc, DailyNewState,
                              DailyNewModel?>(
                            selector: (state) => state.dailyNewModelObj,
                            builder: (context, dailyNewModelObj) {
                              return ListView.separated(
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      16,
                                    ),
                                  );
                                },
                                itemCount: dailyNewModelObj
                                        ?.listnineteenItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  ListnineteenItemModel model = dailyNewModelObj
                                          ?.listnineteenItemList[index] ??
                                      ListnineteenItemModel();
                                  return ListnineteenItemWidget(
                                    model,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 30,
                            right: 91,
                          ),
                          padding: getPadding(
                            all: 16,
                          ),
                          decoration: AppDecoration.outlineBlack90019.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                  right: 8,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgEllipse2150x502,
                                      height: getSize(
                                        50,
                                      ),
                                      width: getSize(
                                        50,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          25,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 6,
                                        bottom: 4,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_avari_kudhra".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium18,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                            ),
                                            child: Text(
                                              "lbl_1_hour_ago".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterMedium10Bluegray100,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgGroup8916,
                                      height: getVerticalSize(
                                        6,
                                      ),
                                      width: getHorizontalSize(
                                        30,
                                      ),
                                      margin: getMargin(
                                        left: 80,
                                        top: 22,
                                        bottom: 22,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  200,
                                ),
                                child: BlocSelector<DailyNewBloc, DailyNewState,
                                    DailyNewModel?>(
                                  selector: (state) => state.dailyNewModelObj,
                                  builder: (context, dailyNewModelObj) {
                                    return ListView.separated(
                                      padding: getPadding(
                                        top: 33,
                                      ),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: getVerticalSize(
                                            16,
                                          ),
                                        );
                                      },
                                      itemCount: dailyNewModelObj
                                              ?.listfiveItemList.length ??
                                          0,
                                      itemBuilder: (context, index) {
                                        ListfiveItemModel model =
                                            dailyNewModelObj
                                                    ?.listfiveItemList[index] ??
                                                ListfiveItemModel();
                                        return ListfiveItemWidget(
                                          model,
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  340,
                                ),
                                margin: getMargin(
                                  top: 14,
                                  right: 10,
                                ),
                                child: Text(
                                  "msg_this_is_a_very".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 15,
                                  right: 14,
                                  bottom: 15,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl_animal".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular14,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                      ),
                                      child: Text(
                                        "lbl_forest".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 30,
                                      ),
                                      child: Text(
                                        "lbl_rabbit".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
