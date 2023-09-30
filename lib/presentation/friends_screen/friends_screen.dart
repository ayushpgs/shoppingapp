import '../friends_screen/widgets/friends_item_widget.dart';
import 'bloc/friends_bloc.dart';
import 'models/friends_item_model.dart';
import 'models/friends_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:aryan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:aryan_s_application1/widgets/custom_icon_button.dart';
import 'package:aryan_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<FriendsBloc>(
        create: (context) =>
            FriendsBloc(FriendsState(friendsModelObj: FriendsModel()))
              ..add(FriendsInitialEvent()),
        child: FriendsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftDeepPurpleA200,
                    margin: getMargin(left: 16, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgGoogle50x50,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 13),
                      onTap: () {
                        onTapGoogle(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("lbl_friends".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      BlocSelector<FriendsBloc, FriendsState,
                              TextEditingController?>(
                          selector: (state) => state.group9116Controller,
                          builder: (context, group9116Controller) {
                            return CustomSearchView(
                                focusNode: FocusNode(),
                                controller: group9116Controller,
                                hintText: "lbl_search".tr,
                                margin: getMargin(top: 13),
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 11,
                                        right: 16,
                                        bottom: 11),
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgSearchGray400)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(40)));
                          }),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Text("msg_connect_to_your".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold20)),
                      Padding(
                          padding: getPadding(top: 29, right: 90),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgTwitter50x50,
                                height: getSize(50),
                                width: getSize(50),
                                onTap: () {
                                  onTapImgTwitter(context);
                                }),
                            CustomImageView(
                                svgPath: ImageConstant.imgFacebook50x50,
                                height: getSize(50),
                                width: getSize(50),
                                margin: getMargin(left: 30),
                                onTap: () {
                                  onTapImgFacebook(context);
                                }),
                            CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                                height: getSize(50),
                                width: getSize(50),
                                margin: getMargin(left: 30)),
                            CustomIconButton(
                                height: 50,
                                width: 50,
                                margin: getMargin(left: 32),
                                variant: IconButtonVariant.FillRed300,
                                onTap: () {
                                  onTapBtnGoogleOne(context);
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgGoogle1))
                          ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("lbl_recommeded".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold20)),
                      Padding(
                          padding: getPadding(top: 20),
                          child: BlocSelector<FriendsBloc, FriendsState,
                                  FriendsModel?>(
                              selector: (state) => state.friendsModelObj,
                              builder: (context, friendsModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding: getPadding(
                                              top: 17.0, bottom: 17.0),
                                          child: SizedBox(
                                              width: double.maxFinite,
                                              child: Divider(
                                                  height: getVerticalSize(2),
                                                  thickness: getVerticalSize(2),
                                                  color: ColorConstant
                                                      .deepPurple50)));
                                    },
                                    itemCount: friendsModelObj
                                            ?.friendsItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      FriendsItemModel model = friendsModelObj
                                              ?.friendsItemList[index] ??
                                          FriendsItemModel();
                                      return FriendsItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapImgTwitter(BuildContext context) async {
    var url = 'https://twitter.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }

  onTapImgFacebook(BuildContext context) async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapBtnGoogleOne(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }

  onTapArrowleft4(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapGoogle(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
