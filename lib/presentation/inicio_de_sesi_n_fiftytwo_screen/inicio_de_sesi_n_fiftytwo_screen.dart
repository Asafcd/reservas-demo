import '../inicio_de_sesi_n_fiftytwo_screen/widgets/foodinformationlist_item_widget.dart';
import '../inicio_de_sesi_n_fiftytwo_screen/widgets/widget2_item_widget.dart';
import 'bloc/inicio_de_sesi_n_fiftytwo_bloc.dart';
import 'models/foodinformationlist_item_model.dart';
import 'models/inicio_de_sesi_n_fiftytwo_model.dart';
import 'models/widget2_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InicioDeSesiNFiftytwoScreen extends StatelessWidget {
  const InicioDeSesiNFiftytwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNFiftytwoBloc>(
      create: (context) => InicioDeSesiNFiftytwoBloc(InicioDeSesiNFiftytwoState(
        inicioDeSesiNFiftytwoModelObj: InicioDeSesiNFiftytwoModel(),
      ))
        ..add(InicioDeSesiNFiftytwoInitialEvent()),
      child: InicioDeSesiNFiftytwoScreen(),
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
                SizedBox(
                  height: 716.v,
                  width: 412.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
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
                            _buildFoodInformationList(context),
                            SizedBox(height: 16.v),
                            _buildActionsRow(context),
                          ],
                        ),
                      ),
                      BlocSelector<InicioDeSesiNFiftytwoBloc,
                          InicioDeSesiNFiftytwoState, TextEditingController?>(
                        selector: (state) => state.topAppBarController,
                        builder: (context, topAppBarController) {
                          return CustomTextFormField(
                            width: 412.h,
                            controller: topAppBarController,
                            hintText: "lbl_product".tr,
                            hintStyle: theme.textTheme.titleLarge!,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.topCenter,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 20.v, 30.h, 20.v),
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
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 20.v, 16.h, 20.v),
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
                    ],
                  ),
                ),
                SizedBox(height: 76.v),
                _buildComponentNinetyNineRow(context),
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
          BlocBuilder<InicioDeSesiNFiftytwoBloc, InicioDeSesiNFiftytwoState>(
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
                itemCount: state.inicioDeSesiNFiftytwoModelObj?.widget2ItemList
                        .length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  Widget2ItemModel model = state.inicioDeSesiNFiftytwoModelObj
                          ?.widget2ItemList[index] ??
                      Widget2ItemModel();
                  return Widget2ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<InicioDeSesiNFiftytwoBloc,
                InicioDeSesiNFiftytwoState>(
              builder: (context, state) {
                return SizedBox(
                  height: 32.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.inicioDeSesiNFiftytwoModelObj?.widget2ItemList
                            .length ??
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
  Widget _buildFoodInformationList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: BlocSelector<InicioDeSesiNFiftytwoBloc, InicioDeSesiNFiftytwoState,
          InicioDeSesiNFiftytwoModel?>(
        selector: (state) => state.inicioDeSesiNFiftytwoModelObj,
        builder: (context, inicioDeSesiNFiftytwoModelObj) {
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
            itemCount: inicioDeSesiNFiftytwoModelObj
                    ?.foodinformationlistItemList.length ??
                0,
            itemBuilder: (context, index) {
              FoodinformationlistItemModel model = inicioDeSesiNFiftytwoModelObj
                      ?.foodinformationlistItemList[index] ??
                  FoodinformationlistItemModel();
              return FoodinformationlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildActionsRow(BuildContext context) {
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
  Widget _buildComponentNinetyNineRow(BuildContext context) {
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
