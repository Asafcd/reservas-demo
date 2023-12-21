import '../inicio_de_sesi_n_twentythree_page/widgets/baroasis1_item_widget.dart';
import '../inicio_de_sesi_n_twentythree_page/widgets/baroasisslider1_item_widget.dart';
import 'bloc/inicio_de_sesi_n_twentythree_bloc.dart';
import 'models/baroasis1_item_model.dart';
import 'models/baroasisslider1_item_model.dart';
import 'models/inicio_de_sesi_n_twentythree_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNTwentythreePage extends StatefulWidget {
  const InicioDeSesiNTwentythreePage({Key? key})
      : super(
          key: key,
        );

  @override
  InicioDeSesiNTwentythreePageState createState() =>
      InicioDeSesiNTwentythreePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNTwentythreeBloc>(
      create: (context) =>
          InicioDeSesiNTwentythreeBloc(InicioDeSesiNTwentythreeState(
        inicioDeSesiNTwentythreeModelObj: InicioDeSesiNTwentythreeModel(),
      ))
            ..add(InicioDeSesiNTwentythreeInitialEvent()),
      child: InicioDeSesiNTwentythreePage(),
    );
  }
}

class InicioDeSesiNTwentythreePageState
    extends State<InicioDeSesiNTwentythreePage>
    with AutomaticKeepAliveClientMixin<InicioDeSesiNTwentythreePage> {
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
      child: BlocBuilder<InicioDeSesiNTwentythreeBloc,
          InicioDeSesiNTwentythreeState>(
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
            itemCount: state.inicioDeSesiNTwentythreeModelObj
                    ?.baroasisslider1ItemList.length ??
                0,
            itemBuilder: (context, index, realIndex) {
              Baroasisslider1ItemModel model = state
                      .inicioDeSesiNTwentythreeModelObj
                      ?.baroasisslider1ItemList[index] ??
                  Baroasisslider1ItemModel();
              return Baroasisslider1ItemWidget(
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
          child: BlocSelector<InicioDeSesiNTwentythreeBloc,
              InicioDeSesiNTwentythreeState, InicioDeSesiNTwentythreeModel?>(
            selector: (state) => state.inicioDeSesiNTwentythreeModelObj,
            builder: (context, inicioDeSesiNTwentythreeModelObj) {
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
                itemCount: inicioDeSesiNTwentythreeModelObj
                        ?.baroasis1ItemList.length ??
                    0,
                itemBuilder: (context, index) {
                  Baroasis1ItemModel model = inicioDeSesiNTwentythreeModelObj
                          ?.baroasis1ItemList[index] ??
                      Baroasis1ItemModel();
                  return Baroasis1ItemWidget(
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
