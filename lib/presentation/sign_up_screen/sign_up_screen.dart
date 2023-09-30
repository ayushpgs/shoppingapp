import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/widgets/custom_button.dart';
import 'package:aryan_s_application1/widgets/custom_icon_button.dart';
import 'package:aryan_s_application1/widgets/custom_radio_button.dart';
import 'package:aryan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA200,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 3, right: 16, bottom: 3),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 44,
                          width: 44,
                          shape: IconButtonShape.RoundedBorder15,
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftWhiteA7001)),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Text("msg_create_a_new_ac".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("msg_it_s_fast_and_e".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: BlocSelector<SignUpBloc, SignUpState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.frameThirtyController,
                                        builder:
                                            (context, frameThirtyController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller: frameThirtyController,
                                              hintText: "lbl_first_name".tr,
                                              margin: getMargin(right: 8));
                                        })),
                                Expanded(
                                    child: BlocSelector<SignUpBloc, SignUpState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.frameThirtyFourController,
                                        builder: (context,
                                            frameThirtyFourController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                                  frameThirtyFourController,
                                              hintText: "lbl_last_name".tr,
                                              margin: getMargin(left: 8));
                                        }))
                              ])),
                      BlocSelector<SignUpBloc, SignUpState,
                              TextEditingController?>(
                          selector: (state) => state.frameThirtyFiveController,
                          builder: (context, frameThirtyFiveController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: frameThirtyFiveController,
                                hintText: "lbl_email_id".tr,
                                margin: getMargin(top: 16),
                                textInputType: TextInputType.emailAddress);
                          }),
                      BlocSelector<SignUpBloc, SignUpState,
                              TextEditingController?>(
                          selector: (state) => state.frameThirtySixController,
                          builder: (context, frameThirtySixController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: frameThirtySixController,
                                hintText: "lbl_phone_no".tr,
                                margin: getMargin(top: 16),
                                textInputType: TextInputType.phone);
                          }),
                      BlocSelector<SignUpBloc, SignUpState,
                              TextEditingController?>(
                          selector: (state) => state.frameThirtySevenController,
                          builder: (context, frameThirtySevenController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: frameThirtySevenController,
                                hintText: "lbl_date_of_birth".tr,
                                margin: getMargin(top: 16),
                                padding: TextFormFieldPadding.PaddingT16,
                                textInputAction: TextInputAction.done,
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 13,
                                        right: 16,
                                        bottom: 13),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCalendar)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(50)));
                          }),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_gender".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16)),
                      Padding(
                          padding: getPadding(top: 11),
                          child: BlocBuilder<SignUpBloc, SignUpState>(
                              builder: (context, state) {
                            return state.signUpModelObj!.radioList.isNotEmpty
                                ? Row(children: [
                                    CustomRadioButton(
                                        width: getHorizontalSize(183),
                                        text: "lbl_female".tr,
                                        value: state
                                                .signUpModelObj?.radioList[0] ??
                                            "",
                                        groupValue: state.radioGroup,
                                        variant:
                                            RadioVariant.FillDeeppurpleA100cc,
                                        shape: RadioShape.CircleBorder25,
                                        padding: RadioPadding.PaddingT16,
                                        fontStyle: RadioFontStyle
                                            .InterMedium14WhiteA700,
                                        onChange: (value) {
                                          context.read<SignUpBloc>().add(
                                              ChangeRadioButtonEvent(
                                                  value: value));
                                        }),
                                    CustomRadioButton(
                                        width: getHorizontalSize(183),
                                        text: "lbl_male".tr,
                                        value: state
                                                .signUpModelObj?.radioList[1] ??
                                            "",
                                        groupValue: state.radioGroup,
                                        margin: getMargin(left: 16),
                                        variant:
                                            RadioVariant.FillDeeppurpleA100cc,
                                        shape: RadioShape.CircleBorder25,
                                        padding: RadioPadding.PaddingT16,
                                        fontStyle: RadioFontStyle
                                            .InterMedium14WhiteA700,
                                        onChange: (value) {
                                          context.read<SignUpBloc>().add(
                                              ChangeRadioButtonEvent(
                                                  value: value));
                                        })
                                  ])
                                : Container();
                          })),
                      Container(
                          width: getHorizontalSize(367),
                          margin: getMargin(left: 8, top: 40, right: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_by_clicking_reg2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_data_policy".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_and".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_cookie_polic".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "msg_y_you_will_rec".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.center)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 36, bottom: 5),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle:
                              ButtonFontStyle.InterMedium18DeeppurpleA200,
                          onTap: () {
                            onTapSignup(context);
                          })
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapSignup(BuildContext context) {
    context.read<SignUpBloc>().add(
          CreateRegisterEvent(
            onCreateRegisterEventSuccess: () {
              _onCreateRegisterEventSuccess(context);
            },
            onCreateRegisterEventError: () {
              _onCreateRegisterEventError(context);
            },
          ),
        );
  }

  void _onCreateRegisterEventSuccess(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.trendingContainerScreen, arguments: {
      NavigationArgs.id: context.read<SignUpBloc>().postRegisterResp.data!.id!
    });
  }

  void _onCreateRegisterEventError(BuildContext context) {
    Fluttertoast.showToast(
      msg: context.read<SignUpBloc>().postRegisterResp.message!.toString(),
    );
  }
}
