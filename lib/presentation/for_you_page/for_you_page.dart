import '../for_you_page/widgets/foryou_item_widget.dart';
import 'bloc/for_you_bloc.dart';
import 'models/for_you_model.dart';
import 'models/foryou_item_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForYouPage extends StatefulWidget {
  @override
  _ForYouPageState createState() => _ForYouPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ForYouBloc>(
      create: (context) => ForYouBloc(ForYouState(
        forYouModelObj: ForYouModel(),
      ))
        ..add(ForYouInitialEvent()),
      child: ForYouPage(),
    );
  }
}

class _ForYouPageState extends State<ForYouPage>
    with AutomaticKeepAliveClientMixin<ForYouPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: getVerticalSize(
                    287,
                  ),
                  child: BlocSelector<ForYouBloc, ForYouState, ForYouModel?>(
                    selector: (state) => state.forYouModelObj,
                    builder: (context, forYouModelObj) {
                      return ListView.separated(
                        padding: getPadding(
                          left: 7,
                          top: 36,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              14,
                            ),
                          );
                        },
                        itemCount: forYouModelObj?.foryouItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          ForyouItemModel model =
                              forYouModelObj?.foryouItemList[index] ??
                                  ForyouItemModel();
                          return ForyouItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
