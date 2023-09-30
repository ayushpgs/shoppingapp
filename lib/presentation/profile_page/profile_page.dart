import '../profile_page/widgets/profile_item_widget.dart';
import 'bloc/profile_bloc.dart';
import 'models/profile_item_model.dart';
import 'models/profile_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfilePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgLink,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.centerRight,
                                margin: getMargin(top: 13, right: 16)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapRowellipsefourteen(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 16, top: 37),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse1480x80,
                                              height: getSize(80),
                                              width: getSize(80),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(40))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 24, top: 7, bottom: 6),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_rosalia".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold32),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 10),
                                                        child: Text(
                                                            "lbl_rose23".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular14Gray600))
                                                  ]))
                                        ])))),
                            Padding(
                                padding:
                                    getPadding(left: 24, top: 29, right: 27),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_post".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular20Black900),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Text("lbl_75".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold20DeeppurpleA200))
                                          ]),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_following".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular20Black900),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Text("lbl_3400".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold20DeeppurpleA200))
                                              ])),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_followers".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular20Black900),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Text("lbl_6500".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold20DeeppurpleA200))
                                          ])
                                    ])),
                            Container(
                                width: double.maxFinite,
                                margin: getMargin(top: 24),
                                padding: getPadding(
                                    left: 40, top: 16, right: 40, bottom: 16),
                                decoration: AppDecoration.fillGray100,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMenu,
                                          height: getSize(40),
                                          width: getSize(40)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgBookmark,
                                          height: getSize(40),
                                          width: getSize(40)),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgPlaycircleoutline,
                                          height: getSize(40),
                                          width: getSize(40)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMusic,
                                          height: getSize(40),
                                          width: getSize(40))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 24, right: 16),
                                child: BlocSelector<ProfileBloc, ProfileState,
                                        ProfileModel?>(
                                    selector: (state) => state.profileModelObj,
                                    builder: (context, profileModelObj) {
                                      return ListView.separated(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: profileModelObj
                                                  ?.profileItemList.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            ProfileItemModel model =
                                                profileModelObj
                                                            ?.profileItemList[
                                                        index] ??
                                                    ProfileItemModel();
                                            return ProfileItemWidget(model);
                                          });
                                    }))
                          ])
                    ]))));
  }

  onTapRowellipsefourteen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailedProfileScreen,
    );
  }
}
