import '../models/listellipsefifteen_item_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListellipsefifteenItemWidget extends StatelessWidget {
  ListellipsefifteenItemWidget(this.listellipsefifteenItemModelObj);

  ListellipsefifteenItemModel listellipsefifteenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.deepPurpleA200,
                  width: getHorizontalSize(
                    2,
                  ),
                ),
                borderRadius: BorderRadiusStyle.circleBorder32,
              ),
              child: Container(
                height: getSize(
                  64,
                ),
                width: getSize(
                  64,
                ),
                padding: getPadding(
                  left: 6,
                  top: 5,
                  right: 6,
                  bottom: 5,
                ),
                decoration: AppDecoration.outlineDeeppurpleA2001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder32,
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse1554x521,
                      height: getVerticalSize(
                        54,
                      ),
                      width: getHorizontalSize(
                        52,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          27,
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
                top: 9,
              ),
              child: Text(
                listellipsefifteenItemModelObj.nameTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
