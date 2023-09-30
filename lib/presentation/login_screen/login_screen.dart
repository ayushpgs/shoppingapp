import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:aryan_s_application1/domain/facebookauth/facebook_auth_helper.dart';
import 'package:aryan_s_application1/domain/googleauth/google_auth_helper.dart';

class LoginScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.deepPurpleA200,
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: getVerticalSize(243),
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle3799158x122,
                                      height: getVerticalSize(158),
                                      width: getHorizontalSize(122),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(12)),
                                      alignment: Alignment.topLeft,
                                      margin: getMargin(left: 16, top: 13)),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle3800158x122,
                                      height: getVerticalSize(158),
                                      width: getHorizontalSize(122),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(12)),
                                      alignment: Alignment.bottomCenter,
                                      margin: getMargin(bottom: 10)),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle380367x122,
                                      height: getVerticalSize(67),
                                      width: getHorizontalSize(122),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(12)),
                                      alignment: Alignment.topCenter),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle3802158x122,
                                      height: getVerticalSize(158),
                                      width: getHorizontalSize(122),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(12)),
                                      alignment: Alignment.topRight,
                                      margin: getMargin(top: 38, right: 16)),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle3801158x8,
                                      height: getVerticalSize(158),
                                      width: getHorizontalSize(8),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(4)),
                                      alignment: Alignment.bottomRight),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle3799158x81,
                                      height: getVerticalSize(158),
                                      width: getHorizontalSize(8),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(4)),
                                      alignment: Alignment.topLeft,
                                      margin: getMargin(top: 32)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: getVerticalSize(243),
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(0.5, 0),
                                                  end: Alignment(0.5, 0.81),
                                                  colors: [
                                                ColorConstant.deepPurpleA200F2,
                                                ColorConstant.deepPurpleA200F201
                                              ]))))
                                ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: getHorizontalSize(343),
                                margin: getMargin(left: 16, top: 75, right: 54),
                                child: Text("msg_find_new_friend".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold32))),
                        Container(
                            width: getHorizontalSize(370),
                            margin: getMargin(left: 16, top: 9, right: 27),
                            child: Text("msg_with_billions_o".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular16)),
                        Padding(
                            padding: getPadding(top: 52),
                            child: Text("lbl_or_login_with".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular16)),
                        Padding(
                            padding: getPadding(top: 22),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgFacebook,
                                      height: getSize(24),
                                      width: getSize(24),
                                      onTap: () {
                                        onTapImgFacebook(context);
                                      }),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgTwitter,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(left: 30)),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgGoogle,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(left: 30),
                                      onTap: () {
                                        onTapImgGoogle(context);
                                      })
                                ])),
                        CustomButton(
                            height: getVerticalSize(50),
                            text: "lbl_log_in".tr,
                            margin: getMargin(
                                left: 16, top: 50, right: 16, bottom: 5),
                            variant: ButtonVariant.FillWhiteA700,
                            shape: ButtonShape.CircleBorder25,
                            padding: ButtonPadding.PaddingAll14,
                            fontStyle:
                                ButtonFontStyle.InterMedium18DeeppurpleA200,
                            onTap: () {
                              onTapLogin(context);
                            })
                      ])),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(50),
                  text: "lbl_sign_up".tr,
                  margin: getMargin(left: 16, right: 16, bottom: 69),
                  variant: ButtonVariant.OutlineWhiteA700_1,
                  shape: ButtonShape.CircleBorder25,
                  padding: ButtonPadding.PaddingAll14,
                  fontStyle: ButtonFontStyle.InterMedium18WhiteA700_1,
                  onTap: () {
                    onTapSignup(context);
                  })));
    });
  }

  onTapImgFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapImgGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.logInScreen,
    );
  }

  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
