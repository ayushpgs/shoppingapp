import 'bloc/trending_container_bloc.dart';
import 'models/trending_container_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/presentation/messages_page/messages_page.dart';
import 'package:aryan_s_application1/presentation/notifications_page/notifications_page.dart';
import 'package:aryan_s_application1/presentation/profile_page/profile_page.dart';
import 'package:aryan_s_application1/presentation/stream_tab_container_page/stream_tab_container_page.dart';
import 'package:aryan_s_application1/presentation/trending_tab_container_page/trending_tab_container_page.dart';
import 'package:aryan_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class TrendingContainerScreen extends StatefulWidget {
  @override
  _TrendingContainerScreenState createState() =>
      _TrendingContainerScreenState();
  static Widget builder(BuildContext context) {
    var arg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return BlocProvider<TrendingContainerBloc>(
        create: (context) => TrendingContainerBloc(TrendingContainerState(
            trendingContainerModelObj: TrendingContainerModel(),
            id: arg[NavigationArgs.id]))
          ..add(TrendingContainerInitialEvent()),
        child: TrendingContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class _TrendingContainerScreenState extends State<TrendingContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingContainerBloc, TrendingContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.trendingTabContainerPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    widget.navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
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
}
