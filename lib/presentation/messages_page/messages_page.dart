import '../messages_page/widgets/listellipsefifteen3_item_widget.dart';
import '../messages_page/widgets/listsender_item_widget.dart';
import 'bloc/messages_bloc.dart';
import 'models/listellipsefifteen3_item_model.dart';
import 'models/listsender_item_model.dart';
import 'models/messages_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:aryan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MessagesBloc>(
        create: (context) =>
            MessagesBloc(MessagesState(messagesModelObj: MessagesModel()))
              ..add(MessagesInitialEvent()),
        child: MessagesPage());
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
                    svgPath: ImageConstant.imgArrowleftDeepPurpleA200,
                    margin: getMargin(left: 16, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgPlus24x24,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 13))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 25, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16),
                          child: Text("lbl_messages".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(99),
                              child: BlocSelector<MessagesBloc, MessagesState,
                                      MessagesModel?>(
                                  selector: (state) => state.messagesModelObj,
                                  builder: (context, messagesModelObj) {
                                    return ListView.separated(
                                        padding: getPadding(left: 16, top: 17),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(20));
                                        },
                                        itemCount: messagesModelObj
                                                ?.listellipsefifteen3ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listellipsefifteen3ItemModel model =
                                              messagesModelObj
                                                          ?.listellipsefifteen3ItemList[
                                                      index] ??
                                                  Listellipsefifteen3ItemModel();
                                          return Listellipsefifteen3ItemWidget(
                                              model);
                                        });
                                  }))),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Divider(
                              height: getVerticalSize(2),
                              thickness: getVerticalSize(2),
                              color: ColorConstant.deepPurple50)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: BlocSelector<MessagesBloc, MessagesState,
                                      MessagesModel?>(
                                  selector: (state) => state.messagesModelObj,
                                  builder: (context, messagesModelObj) {
                                    return ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return Padding(
                                              padding: getPadding(
                                                  top: 25.0, bottom: 25.0),
                                              child: SizedBox(
                                                  width: double.maxFinite,
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(2),
                                                      thickness:
                                                          getVerticalSize(2),
                                                      color: ColorConstant
                                                          .deepPurple50)));
                                        },
                                        itemCount: messagesModelObj
                                                ?.listsenderItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          ListsenderItemModel model =
                                              messagesModelObj
                                                          ?.listsenderItemList[
                                                      index] ??
                                                  ListsenderItemModel();
                                          return ListsenderItemWidget(model);
                                        });
                                  })))
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    NavigatorService.goBack();
  }
}
