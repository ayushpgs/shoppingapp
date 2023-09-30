import '../models/listeight_item_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListeightItemWidget extends StatelessWidget {
  ListeightItemWidget(this.listeightItemModelObj);

  ListeightItemModel listeightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CustomImageView(
        imagePath: ImageConstant.img46161x117,
        height: getVerticalSize(
          161,
        ),
        width: getHorizontalSize(
          117,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
        margin: getMargin(
          right: 16,
        ),
      ),
    );
  }
}
