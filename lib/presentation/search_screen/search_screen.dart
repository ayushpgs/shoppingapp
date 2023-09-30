import '../search_screen/widgets/search_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:aryan_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 13, right: 16, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(24),
                          width: getSize(24),
                          onTap: () {
                            onTapImgClose(context);
                          }),
                      Padding(
                          padding: getPadding(top: 34),
                          child: Text("lbl_search".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      BlocSelector<SearchBloc, SearchState,
                              TextEditingController?>(
                          selector: (state) => state.group9116Controller,
                          builder: (context, group9116Controller) {
                            return CustomSearchView(
                                focusNode: FocusNode(),
                                controller: group9116Controller,
                                hintText: "lbl_search".tr,
                                margin: getMargin(top: 13),
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 11,
                                        right: 16,
                                        bottom: 11),
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgSearchGray400)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(40)));
                          }),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_recently".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold20),
                                Padding(
                                    padding: getPadding(bottom: 5),
                                    child: Text("lbl_clear_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16DeeppurpleA200))
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: BlocSelector<SearchBloc, SearchState,
                                  SearchModel?>(
                              selector: (state) => state.searchModelObj,
                              builder: (context, searchModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding: getPadding(
                                              top: 17.0, bottom: 17.0),
                                          child: SizedBox(
                                              width: double.maxFinite,
                                              child: Divider(
                                                  height: getVerticalSize(2),
                                                  thickness: getVerticalSize(2),
                                                  color: ColorConstant
                                                      .deepPurple50)));
                                    },
                                    itemCount:
                                        searchModelObj?.searchItemList.length ??
                                            0,
                                    itemBuilder: (context, index) {
                                      SearchItemModel model = searchModelObj
                                              ?.searchItemList[index] ??
                                          SearchItemModel();
                                      return SearchItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
