import '../stream_page/widgets/stream_item_widget.dart';
import 'bloc/stream_bloc.dart';
import 'models/stream_item_model.dart';
import 'models/stream_model.dart';
import 'package:aryan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class StreamPage extends StatefulWidget {
  @override
  _StreamPageState createState() => _StreamPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<StreamBloc>(
      create: (context) => StreamBloc(StreamState(
        streamModelObj: StreamModel(),
      ))
        ..add(StreamInitialEvent()),
      child: StreamPage(),
    );
  }
}

class _StreamPageState extends State<StreamPage>
    with AutomaticKeepAliveClientMixin<StreamPage> {
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
              Container(
                height: getVerticalSize(
                  623,
                ),
                child: BlocSelector<StreamBloc, StreamState, StreamModel?>(
                  selector: (state) => state.streamModelObj,
                  builder: (context, streamModelObj) {
                    return ListView.separated(
                      padding: getPadding(
                        left: 16,
                        top: 21,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            21,
                          ),
                        );
                      },
                      itemCount: streamModelObj?.streamItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        StreamItemModel model =
                            streamModelObj?.streamItemList[index] ??
                                StreamItemModel();
                        return StreamItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
