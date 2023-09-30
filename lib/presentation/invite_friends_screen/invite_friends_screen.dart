import '../invite_friends_screen/widgets/invitefriends_item_widget.dart';
import 'bloc/invite_friends_bloc.dart';
import 'models/invite_friends_model.dart';
import 'models/invitefriends_item_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:aryan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class InviteFriendsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<InviteFriendsBloc>(
        create: (context) => InviteFriendsBloc(
            InviteFriendsState(inviteFriendsModelObj: InviteFriendsModel()))
          ..add(InviteFriendsInitialEvent()),
        child: InviteFriendsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgClose,
                    margin: getMargin(left: 16, top: 13, bottom: 13),
                    onTap: () {
                      onTapClose(context);
                    }),
                actions: [
                  Padding(
                      padding:
                          getPadding(left: 16, top: 14, right: 16, bottom: 13),
                      child: Text("lbl_next".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold18))
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
                          child: Text("lbl_invite_friends".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      Padding(
                          padding: getPadding(top: 27),
                          child: BlocSelector<InviteFriendsBloc,
                                  InviteFriendsState, InviteFriendsModel?>(
                              selector: (state) => state.inviteFriendsModelObj,
                              builder: (context, inviteFriendsModelObj) {
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
                                    itemCount: inviteFriendsModelObj
                                            ?.invitefriendsItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      InvitefriendsItemModel model =
                                          inviteFriendsModelObj
                                                      ?.invitefriendsItemList[
                                                  index] ??
                                              InvitefriendsItemModel();
                                      return InvitefriendsItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
