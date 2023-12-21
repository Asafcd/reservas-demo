import '../inicio_de_sesi_n_seventynine_screen/widgets/foodinfolist_item_widget.dart';
import '../inicio_de_sesi_n_seventynine_screen/widgets/widget14_item_widget.dart';
import 'bloc/inicio_de_sesi_n_seventynine_bloc.dart';
import 'models/foodinfolist_item_model.dart';
import 'models/inicio_de_sesi_n_seventynine_model.dart';
import 'models/widget14_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InicioDeSesiNSeventynineScreen extends StatelessWidget {
  const InicioDeSesiNSeventynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSeventynineBloc>(
      create: (context) =>
          InicioDeSesiNSeventynineBloc(InicioDeSesiNSeventynineState(
        inicioDeSesiNSeventynineModelObj: InicioDeSesiNSeventynineModel(),
      ))
            ..add(InicioDeSesiNSeventynineInitialEvent()),
      child: InicioDeSesiNSeventynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Container(
            decoration: AppDecoration.outlineGrayF.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocSelector<InicioDeSesiNSeventynineBloc,
                    InicioDeSesiNSeventynineState, TextEditingController?>(
                  selector: (state) => state.topAppBarController,
                  builder: (context, topAppBarController) {
                    return CustomTextFormField(
                      controller: topAppBarController,
                      hintText: "lbl_product".tr,
                      hintStyle: theme.textTheme.titleLarge!,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 20.v, 30.h, 20.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMegaphone,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 64.v,
                      ),
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 20.v, 16.h, 20.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLockGray800,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 64.v,
                      ),
                    );
                  },
                ),
                Column(
                  children: [
                    _buildUserStack(context),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "msg_personaliza_tu".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      width: 370.h,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 25.h,
                      ),
                      child: Text(
                        "msg_selecciona_las_opciones".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    _buildFoodInfoList(context),
                    SizedBox(height: 16.v),
                    _buildActionRow(context),
                  ],
                ),
                SizedBox(height: 68.v),
                _buildPriceRow(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserStack(BuildContext context) {
    return SizedBox(
      height: 252.v,
      width: 412.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BlocBuilder<InicioDeSesiNSeventynineBloc,
              InicioDeSesiNSeventynineState>(
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
                itemCount: state.inicioDeSesiNSeventynineModelObj
                        ?.widget14ItemList.length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  Widget14ItemModel model = state
                          .inicioDeSesiNSeventynineModelObj
                          ?.widget14ItemList[index] ??
                      Widget14ItemModel();
                  return Widget14ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<InicioDeSesiNSeventynineBloc,
                InicioDeSesiNSeventynineState>(
              builder: (context, state) {
                return SizedBox(
                  height: 32.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.inicioDeSesiNSeventynineModelObj
                            ?.widget14ItemList.length ??
                        0,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 9,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: theme.colorScheme.primary.withOpacity(0.75),
                      activeDotScale: 1.3333333333333333,
                      dotHeight: 12.v,
                      dotWidth: 12.h,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodInfoList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: BlocSelector<InicioDeSesiNSeventynineBloc,
          InicioDeSesiNSeventynineState, InicioDeSesiNSeventynineModel?>(
        selector: (state) => state.inicioDeSesiNSeventynineModelObj,
        builder: (context, inicioDeSesiNSeventynineModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount:
                inicioDeSesiNSeventynineModelObj?.foodinfolistItemList.length ??
                    0,
            itemBuilder: (context, index) {
              FoodinfolistItemModel model = inicioDeSesiNSeventynineModelObj
                      ?.foodinfolistItemList[index] ??
                  FoodinfolistItemModel();
              return FoodinfolistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildActionRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 33.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 148.h),
            child: Text(
              "lbl_cancelar".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32.h),
            child: Text(
              "lbl_guardar".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL181,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_total".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_0".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_00".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_mxn".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
