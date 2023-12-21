import '../inicio_de_sesi_n_nineteen_page/widgets/baroasis_item_widget.dart';
import '../inicio_de_sesi_n_nineteen_page/widgets/baroasisslider_item_widget.dart';
import 'bloc/inicio_de_sesi_n_nineteen_bloc.dart';
import 'models/baroasis_item_model.dart';
import 'models/baroasisslider_item_model.dart';
import 'models/inicio_de_sesi_n_nineteen_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNNineteenPage extends StatefulWidget {
  const InicioDeSesiNNineteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  InicioDeSesiNNineteenPageState createState() =>
      InicioDeSesiNNineteenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNNineteenBloc>(
      create: (context) => InicioDeSesiNNineteenBloc(InicioDeSesiNNineteenState(
        inicioDeSesiNNineteenModelObj: InicioDeSesiNNineteenModel(),
      ))
        ..add(InicioDeSesiNNineteenInitialEvent()),
      child: InicioDeSesiNNineteenPage(),
    );
  }
}

class InicioDeSesiNNineteenPageState extends State<InicioDeSesiNNineteenPage>
    with AutomaticKeepAliveClientMixin<InicioDeSesiNNineteenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildBarOasisSlider(context),
                      SizedBox(height: 30.v),
                      _buildHeadlineColumn(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBarOasisSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: BlocBuilder<InicioDeSesiNNineteenBloc, InicioDeSesiNNineteenState>(
        builder: (context, state) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 252.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                state.sliderIndex = index;
              },
            ),
            itemCount: state.inicioDeSesiNNineteenModelObj
                    ?.baroasissliderItemList.length ??
                0,
            itemBuilder: (context, index, realIndex) {
              BaroasissliderItemModel model = state
                      .inicioDeSesiNNineteenModelObj
                      ?.baroasissliderItemList[index] ??
                  BaroasissliderItemModel();
              return BaroasissliderItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHeadlineColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_promociones".tr,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 26.v),
        SizedBox(
          height: 237.v,
          child: BlocSelector<InicioDeSesiNNineteenBloc,
              InicioDeSesiNNineteenState, InicioDeSesiNNineteenModel?>(
            selector: (state) => state.inicioDeSesiNNineteenModelObj,
            builder: (context, inicioDeSesiNNineteenModelObj) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 24.h,
                  );
                },
                itemCount:
                    inicioDeSesiNNineteenModelObj?.baroasisItemList.length ?? 0,
                itemBuilder: (context, index) {
                  BaroasisItemModel model =
                      inicioDeSesiNNineteenModelObj?.baroasisItemList[index] ??
                          BaroasisItemModel();
                  return BaroasisItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
