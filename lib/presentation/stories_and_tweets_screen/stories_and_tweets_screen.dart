import '../stories_and_tweets_screen/widgets/listellipsetwelve_item_widget.dart';
import '../stories_and_tweets_screen/widgets/listsend_item_widget.dart';
import 'bloc/stories_and_tweets_bloc.dart';
import 'models/listellipsetwelve_item_model.dart';
import 'models/listsend_item_model.dart';
import 'models/stories_and_tweets_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:aryan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class StoriesAndTweetsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<StoriesAndTweetsBloc>(
        create: (context) => StoriesAndTweetsBloc(StoriesAndTweetsState(
            storiesAndTweetsModelObj: StoriesAndTweetsModel()))
          ..add(StoriesAndTweetsInitialEvent()),
        child: StoriesAndTweetsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                title: BlocSelector<StoriesAndTweetsBloc, StoriesAndTweetsState,
                        TextEditingController?>(
                    selector: (state) => state.group9088Controller,
                    builder: (context, group9088Controller) {
                      return AppbarSearchview(
                          margin: getMargin(left: 16),
                          hintText: "lbl_search".tr,
                          controller: group9088Controller);
                    }),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgCamera,
                      margin: getMargin(left: 16, top: 5, right: 16, bottom: 5),
                      onTap: () {
                        onTapCamera1(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, top: 28),
                          child: Text("lbl_stories".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold24)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(112),
                              child: BlocSelector<
                                      StoriesAndTweetsBloc,
                                      StoriesAndTweetsState,
                                      StoriesAndTweetsModel?>(
                                  selector: (state) =>
                                      state.storiesAndTweetsModelObj,
                                  builder: (context, storiesAndTweetsModelObj) {
                                    return ListView.separated(
                                        padding: getPadding(
                                            left: 16, top: 24, right: 14),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(16));
                                        },
                                        itemCount: storiesAndTweetsModelObj
                                                ?.listsendItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          ListsendItemModel model =
                                              storiesAndTweetsModelObj
                                                          ?.listsendItemList[
                                                      index] ??
                                                  ListsendItemModel();
                                          return ListsendItemWidget(model);
                                        });
                                  }))),
                      Padding(
                          padding: getPadding(top: 22),
                          child: BlocSelector<
                                  StoriesAndTweetsBloc,
                                  StoriesAndTweetsState,
                                  StoriesAndTweetsModel?>(
                              selector: (state) =>
                                  state.storiesAndTweetsModelObj,
                              builder: (context, storiesAndTweetsModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding: getPadding(
                                              top: 12.0, bottom: 12.0),
                                          child: SizedBox(
                                              width: double.maxFinite,
                                              child: Divider(
                                                  height: getVerticalSize(2),
                                                  thickness: getVerticalSize(2),
                                                  color: ColorConstant
                                                      .deepPurple50)));
                                    },
                                    itemCount: storiesAndTweetsModelObj
                                            ?.listellipsetwelveItemList
                                            .length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListellipsetwelveItemModel model =
                                          storiesAndTweetsModelObj
                                                      ?.listellipsetwelveItemList[
                                                  index] ??
                                              ListellipsetwelveItemModel();
                                      return ListellipsetwelveItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapCamera1(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
