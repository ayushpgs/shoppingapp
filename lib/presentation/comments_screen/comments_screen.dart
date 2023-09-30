import '../comments_screen/widgets/comments_item_widget.dart';
import 'bloc/comments_bloc.dart';
import 'models/comments_item_model.dart';
import 'models/comments_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/widgets/custom_icon_button.dart';
import 'package:aryan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CommentsBloc>(
        create: (context) =>
            CommentsBloc(CommentsState(commentsModelObj: CommentsModel()))
              ..add(CommentsInitialEvent()),
        child: CommentsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 13, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(left: 16),
                          onTap: () {
                            onTapImgClose(context);
                          }),
                      Padding(
                          padding: getPadding(left: 16, top: 34),
                          child: Text("lbl_comments".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      Padding(
                          padding: getPadding(top: 21),
                          child: BlocSelector<CommentsBloc, CommentsState,
                                  CommentsModel?>(
                              selector: (state) => state.commentsModelObj,
                              builder: (context, commentsModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding:
                                              getPadding(top: 7.0, bottom: 7.0),
                                          child: SizedBox(
                                              width: double.maxFinite,
                                              child: Divider(
                                                  height: getVerticalSize(2),
                                                  thickness: getVerticalSize(2),
                                                  color: ColorConstant
                                                      .deepPurple50)));
                                    },
                                    itemCount: commentsModelObj
                                            ?.commentsItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      CommentsItemModel model = commentsModelObj
                                              ?.commentsItemList[index] ??
                                          CommentsItemModel();
                                      return CommentsItemWidget(model);
                                    });
                              }))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 39),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: BlocSelector<CommentsBloc, CommentsState,
                              TextEditingController?>(
                          selector: (state) => state.frameThirtySixController,
                          builder: (context, frameThirtySixController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: frameThirtySixController,
                                hintText: "lbl_write_a_comment".tr,
                                variant: TextFormFieldVariant.FillGray10001,
                                padding: TextFormFieldPadding.PaddingT16_2,
                                fontStyle: TextFormFieldFontStyle
                                    .InterMedium14Gray50002_1,
                                textInputAction: TextInputAction.done);
                          })),
                  CustomIconButton(
                      height: 50,
                      width: 50,
                      margin: getMargin(left: 16),
                      padding: IconButtonPadding.PaddingAll15,
                      child:
                          CustomImageView(svgPath: ImageConstant.imgSend50x50))
                ]))));
  }

  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
