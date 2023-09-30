import '../models/discover_item_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DiscoverItemWidget extends StatelessWidget {
  DiscoverItemWidget(this.discoverItemModelObj);

  DiscoverItemModel discoverItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: getVerticalSize(
          179,
        ),
        width: getHorizontalSize(
          147,
        ),
        margin: getMargin(
          right: 16,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img19179x1471,
              height: getVerticalSize(
                179,
              ),
              width: getHorizontalSize(
                147,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  15,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: getPadding(
                  top: 12,
                  bottom: 12,
                ),
                decoration: AppDecoration.gradientBlack9009eBlack9009e.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        top: 121,
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: ColorConstant.deepPurpleA200,
                          width: getHorizontalSize(
                            1,
                          ),
                        ),
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Container(
                        height: getSize(
                          34,
                        ),
                        width: getSize(
                          34,
                        ),
                        padding: getPadding(
                          all: 3,
                        ),
                        decoration:
                            AppDecoration.outlineDeeppurpleA200.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse1528x281,
                              height: getSize(
                                28,
                              ),
                              width: getSize(
                                28,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  14,
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 132,
                        bottom: 9,
                      ),
                      child: Text(
                        discoverItemModelObj.nameTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
