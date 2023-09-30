import 'bloc/stream_tab_container_bloc.dart';
import 'models/stream_tab_container_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/presentation/stream_page/stream_page.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:aryan_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:aryan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class StreamTabContainerPage extends StatefulWidget {
  @override
  _StreamTabContainerPageState createState() => _StreamTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<StreamTabContainerBloc>(
        create: (context) => StreamTabContainerBloc(StreamTabContainerState(
            streamTabContainerModelObj: StreamTabContainerModel()))
          ..add(StreamTabContainerInitialEvent()),
        child: StreamTabContainerPage());
  }

  onTapCamera2(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}

// ignore_for_file: must_be_immutable
class _StreamTabContainerPageState extends State<StreamTabContainerPage>
    with TickerProviderStateMixin {
  late TabController frame9031Controller;

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
                height: getVerticalSize(50),
                title: BlocSelector<StreamTabContainerBloc,
                        StreamTabContainerState, TextEditingController?>(
                    selector: (state) => state.group9020Controller,
                    builder: (context, group9020Controller) {
                      return AppbarSearchview(
                          margin: getMargin(left: 16),
                          hintText: "lbl_search".tr,
                          controller: group9020Controller);
                    }),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgCamera,
                      margin: getMargin(left: 16, top: 5, right: 16, bottom: 5),
                      onTap: () {
                        onTapCamera2(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(30),
                          width: getHorizontalSize(398),
                          margin: getMargin(top: 25),
                          child: TabBar(
                              controller: frame9031Controller,
                              labelColor: ColorConstant.deepPurpleA200,
                              unselectedLabelColor: ColorConstant.deepPurple200,
                              tabs: [
                                Tab(
                                    child: Text("lbl_trending".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_latest".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_discover".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_daily_new".tr,
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      Container(
                          height: getVerticalSize(666),
                          child: TabBarView(
                              controller: frame9031Controller,
                              children: [
                                StreamPage.builder(context),
                                StreamPage.builder(context),
                                StreamPage.builder(context),
                                StreamPage.builder(context)
                              ]))
                    ]))));
  }

  onTapCamera2(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
