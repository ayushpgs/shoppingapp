import 'bloc/notification_bloc.dart';
import 'models/notification_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
      create: (context) => NotificationBloc(NotificationState(
        notificationModelObj: NotificationModel(),
      ))
        ..add(NotificationInitialEvent()),
      child: NotificationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.deepPurpleA200,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 168,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNotificationbell,
                height: getVerticalSize(
                  161,
                ),
                width: getHorizontalSize(
                  146,
                ),
                alignment: Alignment.center,
              ),
              Padding(
                padding: getPadding(
                  top: 38,
                ),
                child: Text(
                  "msg_turn_on_notific2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold32,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  380,
                ),
                margin: getMargin(
                  top: 8,
                ),
                child: Text(
                  "msg_turn_on_notific".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 45,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_notifications".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium16,
                    ),
                    BlocSelector<NotificationBloc, NotificationState, bool?>(
                      selector: (state) => state.isSelectedSwitch,
                      builder: (context, isSelectedSwitch) {
                        return CustomSwitch(
                          value: isSelectedSwitch,
                          onChanged: (value) {
                            context
                                .read<NotificationBloc>()
                                .add(ChangeSwitchEvent(value: value));
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
