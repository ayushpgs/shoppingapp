import 'bloc/daily_new_tab_container_bloc.dart';
import 'models/daily_new_tab_container_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/presentation/daily_new_page/daily_new_page.dart';
import 'package:aryan_s_application1/presentation/discover_page/discover_page.dart';
import 'package:aryan_s_application1/presentation/messages_page/messages_page.dart';
import 'package:aryan_s_application1/presentation/notifications_page/notifications_page.dart';
import 'package:aryan_s_application1/presentation/profile_page/profile_page.dart';
import 'package:aryan_s_application1/presentation/stream_tab_container_page/stream_tab_container_page.dart';
import 'package:aryan_s_application1/presentation/trending_tab_container_page/trending_tab_container_page.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:aryan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:aryan_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class DailyNewTabContainerScreen extends StatefulWidget {
  @override
  _DailyNewTabContainerScreenState createState() =>
      _DailyNewTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DailyNewTabContainerBloc>(
      create: (context) => DailyNewTabContainerBloc(DailyNewTabContainerState(
        dailyNewTabContainerModelObj: DailyNewTabContainerModel(),
      ))
        ..add(DailyNewTabContainerInitialEvent()),
      child: DailyNewTabContainerScreen(),
    );
  }
}

class _DailyNewTabContainerScreenState extends State<DailyNewTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController frame9031Controller;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    frame9031Controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            50,
          ),
          title: BlocSelector<DailyNewTabContainerBloc,
              DailyNewTabContainerState, TextEditingController?>(
            selector: (state) => state.group9021Controller,
            builder: (context, group9021Controller) {
              return AppbarSearchview(
                margin: getMargin(
                  left: 16,
                ),
                hintText: "lbl_search".tr,
                controller: group9021Controller,
              );
            },
          ),
          actions: [
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse1440x40,
              margin: getMargin(
                left: 16,
                top: 5,
                right: 19,
                bottom: 5,
              ),
            ),
          ],
        ),
        body: Container(
          width: getHorizontalSize(
            431,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  30,
                ),
                width: getHorizontalSize(
                  410,
                ),
                margin: getMargin(
                  top: 25,
                ),
                child: TabBar(
                  controller: frame9031Controller,
                  labelColor: ColorConstant.deepPurpleA200,
                  unselectedLabelColor: ColorConstant.deepPurple200,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_trending".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_latest".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_discover".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_daily_new".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  666,
                ),
                child: TabBarView(
                  controller: frame9031Controller,
                  children: [
                    DailyNewPage.builder(context),
                    DailyNewPage.builder(context),
                    DiscoverPage.builder(context),
                    DailyNewPage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                widget.navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
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
  Widget getCurrentPage(BuildContext context, String currentRoute) {
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
}
