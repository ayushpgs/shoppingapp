import '../discover_page/widgets/discover_item_widget.dart';
import 'bloc/discover_bloc.dart';
import 'models/discover_item_model.dart';
import 'models/discover_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DiscoverBloc>(
      create: (context) => DiscoverBloc(DiscoverState(
        discoverModelObj: DiscoverModel(),
      ))
        ..add(DiscoverInitialEvent()),
      child: DiscoverPage(),
    );
  }
}

class _DiscoverPageState extends State<DiscoverPage>
    with AutomaticKeepAliveClientMixin<DiscoverPage> {
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
                      top: 35,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(
                            179,
                          ),
                          child: BlocSelector<DiscoverBloc, DiscoverState,
                              DiscoverModel?>(
                            selector: (state) => state.discoverModelObj,
                            builder: (context, discoverModelObj) {
                              return ListView.separated(
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      16,
                                    ),
                                  );
                                },
                                itemCount:
                                    discoverModelObj?.discoverItemList.length ??
                                        0,
                                itemBuilder: (context, index) {
                                  DiscoverItemModel model = discoverModelObj
                                          ?.discoverItemList[index] ??
                                      DiscoverItemModel();
                                  return DiscoverItemWidget(
                                    model,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            401,
                          ),
                          width: getHorizontalSize(
                            382,
                          ),
                          margin: getMargin(
                            top: 30,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: getVerticalSize(
                                    384,
                                  ),
                                  width: getHorizontalSize(
                                    382,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.deepPurpleA200,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.black90019,
                                        spreadRadius: getHorizontalSize(
                                          2,
                                        ),
                                        blurRadius: getHorizontalSize(
                                          2,
                                        ),
                                        offset: Offset(
                                          2,
                                          1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 24,
                                    right: 24,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse2150x501,
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
                                              top: 8,
                                              bottom: 4,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "lbl_rizal_reynaldhi".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterMedium18,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 2,
                                                  ),
                                                  child: Text(
                                                    "lbl_35_minutes_ago".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium10Bluegray100,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgGroup8916,
                                            height: getVerticalSize(
                                              6,
                                            ),
                                            width: getHorizontalSize(
                                              30,
                                            ),
                                            margin: getMargin(
                                              top: 22,
                                              bottom: 22,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          295,
                                        ),
                                        margin: getMargin(
                                          top: 22,
                                          right: 39,
                                        ),
                                        child: Text(
                                          "msg_me_and_my_frien".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular16,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 12,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              "lbl_beach".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular14,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 32,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "lbl_ocean".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular14,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 30,
                                                top: 1,
                                              ),
                                              child: Text(
                                                "lbl_holiday".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.img211227x334,
                                        height: getVerticalSize(
                                          227,
                                        ),
                                        width: getHorizontalSize(
                                          334,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            15,
                                          ),
                                        ),
                                        margin: getMargin(
                                          top: 12,
                                        ),
                                      ),
                                    ],
                                  ),
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
