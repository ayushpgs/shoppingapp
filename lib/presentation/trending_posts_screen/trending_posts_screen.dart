import '../trending_posts_screen/widgets/trendingposts_item_widget.dart';
import 'bloc/trending_posts_bloc.dart';
import 'models/trending_posts_model.dart';
import 'models/trendingposts_item_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/presentation/messages_page/messages_page.dart';
import 'package:aryan_s_application1/presentation/notifications_page/notifications_page.dart';
import 'package:aryan_s_application1/presentation/profile_page/profile_page.dart';
import 'package:aryan_s_application1/presentation/stream_tab_container_page/stream_tab_container_page.dart';
import 'package:aryan_s_application1/presentation/trending_tab_container_page/trending_tab_container_page.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:aryan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:aryan_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore_for_file: must_be_immutable
class TrendingPostsScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<TrendingPostsBloc>(
        create: (context) => TrendingPostsBloc(
            TrendingPostsState(trendingPostsModelObj: TrendingPostsModel()))
          ..add(TrendingPostsInitialEvent()),
        child: TrendingPostsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                title: BlocSelector<TrendingPostsBloc, TrendingPostsState,
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
                        onTapCamera(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 3, bottom: 3),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, top: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_trending".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold24),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 3),
                                    child: Text("lbl_latest".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular18)),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 4),
                                    child: Text("lbl_discover".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular18)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtDailyNew(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 5, bottom: 3),
                                        child: Text("lbl_daily_new".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular18)))
                              ])),
                      Padding(
                          padding: getPadding(top: 21),
                          child: BlocSelector<TrendingPostsBloc,
                                  TrendingPostsState, TrendingPostsModel?>(
                              selector: (state) => state.trendingPostsModelObj,
                              builder: (context, trendingPostsModelObj) {
                                return StaggeredGridView.countBuilder(
                                    shrinkWrap: true,
                                    primary: false,
                                    crossAxisCount: 4,
                                    crossAxisSpacing: getHorizontalSize(16),
                                    mainAxisSpacing: getHorizontalSize(16),
                                    staggeredTileBuilder: (index) {
                                      return StaggeredTile.fit(2);
                                    },
                                    itemCount: trendingPostsModelObj
                                            ?.trendingpostsItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      TrendingpostsItemModel model =
                                          trendingPostsModelObj
                                                      ?.trendingpostsItemList[
                                                  index] ??
                                              TrendingpostsItemModel();
                                      return TrendingpostsItemWidget(model);
                                    });
                              }))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.trendingTabContainerPage;
      case BottomBarEnum.Streams:
        return AppRoutes.streamTabContainerPage;
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.trendingTabContainerPage:
        return TrendingTabContainerPage.builder(context);
      case AppRoutes.streamTabContainerPage:
        return StreamTabContainerPage.builder(context);
      case AppRoutes.messagesPage:
        return MessagesPage.builder(context);
      case AppRoutes.notificationsPage:
        return NotificationsPage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  onTapTxtDailyNew(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dailyNewTabContainerScreen,
    );
  }

  onTapCamera(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
