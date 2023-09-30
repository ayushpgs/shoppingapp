import 'bloc/live_bloc.dart';
import 'models/live_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:aryan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:aryan_s_application1/widgets/custom_icon_button.dart';
import 'package:aryan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LiveBloc>(
      create: (context) => LiveBloc(LiveState(
        liveModelObj: LiveModel(),
      ))
        ..add(LiveInitialEvent()),
      child: LiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup2640,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          decoration: AppDecoration.gradientBlack9007fGray40000,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                height: getVerticalSize(
                                  217,
                                ),
                                leadingWidth: 66,
                                leading: AppbarCircleimage1(
                                  imagePath: ImageConstant.imgEllipse950x50,
                                  margin: getMargin(
                                    left: 16,
                                  ),
                                ),
                                title: Padding(
                                  padding: getPadding(
                                    left: 24,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AppbarSubtitle(
                                        text: "lbl_lucas_anna".tr,
                                      ),
                                      AppbarSubtitle3(
                                        text: "lbl_35_16".tr,
                                        margin: getMargin(
                                          top: 4,
                                          right: 76,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  AppbarImage(
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                    svgPath: ImageConstant.imgClose24x24,
                                    margin: getMargin(
                                      left: 16,
                                      top: 13,
                                      right: 16,
                                      bottom: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          padding: getPadding(
                            left: 16,
                            top: 29,
                            right: 16,
                            bottom: 29,
                          ),
                          decoration: AppDecoration.gradientGray40000Black900ad,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 39,
                                        bottom: 9,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: getPadding(
                                              left: 8,
                                              top: 5,
                                              right: 8,
                                              bottom: 5,
                                            ),
                                            decoration: AppDecoration
                                                .fillBlack90087
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder32,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse945x451,
                                                  height: getSize(
                                                    45,
                                                  ),
                                                  width: getSize(
                                                    45,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      22,
                                                    ),
                                                  ),
                                                  margin: getMargin(
                                                    top: 1,
                                                    bottom: 2,
                                                  ),
                                                ),
                                                Container(
                                                  width: getHorizontalSize(
                                                    164,
                                                  ),
                                                  margin: getMargin(
                                                    left: 15,
                                                    top: 2,
                                                    right: 21,
                                                  ),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              "lbl_erlikhe_sweet"
                                                                  .tr,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA7007f,
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              "msg_can_i_join_with"
                                                                  .tr,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA70001,
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: getMargin(
                                              top: 12,
                                            ),
                                            padding: getPadding(
                                              left: 8,
                                              top: 7,
                                              right: 8,
                                              bottom: 7,
                                            ),
                                            decoration: AppDecoration
                                                .fillBlack90087
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder32,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse845x451,
                                                  height: getSize(
                                                    45,
                                                  ),
                                                  width: getSize(
                                                    45,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      22,
                                                    ),
                                                  ),
                                                  margin: getMargin(
                                                    bottom: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: getHorizontalSize(
                                                    103,
                                                  ),
                                                  margin: getMargin(
                                                    left: 18,
                                                    top: 1,
                                                    right: 40,
                                                    bottom: 2,
                                                  ),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              "lbl_dong_khuwan"
                                                                  .tr,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA7007f,
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              "lbl_so_beautiful"
                                                                  .tr,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA70001,
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgGroup9142,
                                      height: getVerticalSize(
                                        180,
                                      ),
                                      width: getHorizontalSize(
                                        98,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 15,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BlocSelector<LiveBloc, LiveState,
                                        TextEditingController?>(
                                      selector: (state) =>
                                          state.frameThirtySixController,
                                      builder:
                                          (context, frameThirtySixController) {
                                        return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: frameThirtySixController,
                                          hintText: "lbl_write_a_comment".tr,
                                          variant: TextFormFieldVariant
                                              .FillWhiteA70070,
                                          padding:
                                              TextFormFieldPadding.PaddingT16_2,
                                          textInputAction: TextInputAction.done,
                                        );
                                      },
                                    ),
                                    CustomIconButton(
                                      height: 50,
                                      width: 50,
                                      margin: getMargin(
                                        left: 1,
                                      ),
                                      padding: IconButtonPadding.PaddingAll15,
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgSend50x50,
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
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Divider(
                  height: getVerticalSize(
                    2,
                  ),
                  thickness: getVerticalSize(
                    2,
                  ),
                  color: ColorConstant.whiteA7003f,
                  endIndent: getHorizontalSize(
                    70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
