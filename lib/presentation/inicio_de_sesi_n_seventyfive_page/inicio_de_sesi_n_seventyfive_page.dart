import '../inicio_de_sesi_n_seventyfive_page/widgets/baroasis5_item_widget.dart';
import '../inicio_de_sesi_n_seventyfive_page/widgets/baroasisslider2_item_widget.dart';
import 'bloc/inicio_de_sesi_n_seventyfive_bloc.dart';
import 'models/baroasis5_item_model.dart';
import 'models/baroasisslider2_item_model.dart';
import 'models/inicio_de_sesi_n_seventyfive_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNSeventyfivePage extends StatefulWidget {
  const InicioDeSesiNSeventyfivePage({Key? key})
      : super(
          key: key,
        );

  @override
  InicioDeSesiNSeventyfivePageState createState() =>
      InicioDeSesiNSeventyfivePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSeventyfiveBloc>(
      create: (context) =>
          InicioDeSesiNSeventyfiveBloc(InicioDeSesiNSeventyfiveState(
        inicioDeSesiNSeventyfiveModelObj: InicioDeSesiNSeventyfiveModel(),
      ))
            ..add(InicioDeSesiNSeventyfiveInitialEvent()),
      child: InicioDeSesiNSeventyfivePage(),
    );
  }
}

class InicioDeSesiNSeventyfivePageState
    extends State<InicioDeSesiNSeventyfivePage>
    with AutomaticKeepAliveClientMixin<InicioDeSesiNSeventyfivePage> {
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
      child: BlocBuilder<InicioDeSesiNSeventyfiveBloc,
          InicioDeSesiNSeventyfiveState>(
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
            itemCount: state.inicioDeSesiNSeventyfiveModelObj
                    ?.baroasisslider2ItemList.length ??
                0,
            itemBuilder: (context, index, realIndex) {
              Baroasisslider2ItemModel model = state
                      .inicioDeSesiNSeventyfiveModelObj
                      ?.baroasisslider2ItemList[index] ??
                  Baroasisslider2ItemModel();
              return Baroasisslider2ItemWidget(
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
          child: BlocSelector<InicioDeSesiNSeventyfiveBloc,
              InicioDeSesiNSeventyfiveState, InicioDeSesiNSeventyfiveModel?>(
            selector: (state) => state.inicioDeSesiNSeventyfiveModelObj,
            builder: (context, inicioDeSesiNSeventyfiveModelObj) {
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
                itemCount: inicioDeSesiNSeventyfiveModelObj
                        ?.baroasis5ItemList.length ??
                    0,
                itemBuilder: (context, index) {
                  Baroasis5ItemModel model = inicioDeSesiNSeventyfiveModelObj
                          ?.baroasis5ItemList[index] ??
                      Baroasis5ItemModel();
                  return Baroasis5ItemWidget(
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
