import '../inicio_de_sesi_n_eightythree_screen/widgets/widget17_item_widget.dart';
import 'bloc/inicio_de_sesi_n_eightythree_bloc.dart';
import 'models/inicio_de_sesi_n_eightythree_model.dart';
import 'models/widget17_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_elevated_button.dart';
import 'package:asaf_s_application2/widgets/custom_text_form_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InicioDeSesiNEightythreeScreen extends StatelessWidget {
  const InicioDeSesiNEightythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNEightythreeBloc>(
      create: (context) =>
          InicioDeSesiNEightythreeBloc(InicioDeSesiNEightythreeState(
        inicioDeSesiNEightythreeModelObj: InicioDeSesiNEightythreeModel(),
      ))
            ..add(InicioDeSesiNEightythreeInitialEvent()),
      child: InicioDeSesiNEightythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 1604.v,
              width: 412.h,
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildSliderWidget(context),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl_informaci_n".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          width: 380.h,
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Text(
                            "msg_una_jugosa_hamburguesa".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallOnPrimary,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        _buildSaveButton(context),
                        SizedBox(height: 2.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildBreadRow(
                            context,
                            text: "lbl_pan".tr,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildGlutenFreeBreadRow(
                            context,
                            userImage: ImageConstant.imgRectangle124168,
                            labelText: "lbl_pan_integral".tr,
                            iconImage: ImageConstant.imgIcon24x24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildGlutenFreeBreadRow(
                            context,
                            userImage: ImageConstant.imgRectangle124169,
                            labelText: "lbl_pan_sin_gluten".tr,
                            iconImage: ImageConstant.imgIconPrimary24x24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildGlutenFreeBreadRow(
                            context,
                            userImage: ImageConstant.imgRectangle1241610,
                            labelText: "lbl_pan_regular".tr,
                            iconImage: ImageConstant.imgIconPrimary24x24,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildBreadRow(
                            context,
                            text: "lbl_extras".tr,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildPicklesRow(
                            context,
                            userImage: ImageConstant.imgRectangle1241611,
                            messageText: "msg_tomate_3_rebanadas".tr,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildPicklesRow(
                            context,
                            userImage: ImageConstant.imgRectangle1241612,
                            messageText: "msg_pepinillos_3_rebanadas".tr,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildPicklesRow(
                            context,
                            userImage: ImageConstant.imgRectangle124165,
                            messageText: "msg_cebolla_3_aros_de2".tr,
                          ),
                        ),
                        _buildCheeseRow(context),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildPicklesRow(
                            context,
                            userImage: ImageConstant.imgRectangle124167,
                            messageText: "msg_mostaza_1_pizca2".tr,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildPicklesRow(
                            context,
                            userImage: ImageConstant.imgRectangle1241614,
                            messageText: "msg_lechuga_2_hojas".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: AppDecoration.outlineGrayF.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: BlocSelector<
                          InicioDeSesiNEightythreeBloc,
                          InicioDeSesiNEightythreeState,
                          TextEditingController?>(
                        selector: (state) => state.productvalueController,
                        builder: (context, productvalueController) {
                          return CustomTextFormField(
                            controller: productvalueController,
                            hintText: "lbl_product".tr,
                            hintStyle: theme.textTheme.titleLarge!,
                            textInputAction: TextInputAction.done,
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
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderWidget(BuildContext context) {
    return SizedBox(
      height: 252.v,
      width: 412.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BlocBuilder<InicioDeSesiNEightythreeBloc,
              InicioDeSesiNEightythreeState>(
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
                itemCount: state.inicioDeSesiNEightythreeModelObj
                        ?.widget17ItemList.length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  Widget17ItemModel model = state
                          .inicioDeSesiNEightythreeModelObj
                          ?.widget17ItemList[index] ??
                      Widget17ItemModel();
                  return Widget17ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<InicioDeSesiNEightythreeBloc,
                InicioDeSesiNEightythreeState>(
              builder: (context, state) {
                return SizedBox(
                  height: 32.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.inicioDeSesiNEightythreeModelObj
                            ?.widget17ItemList.length ??
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
  Widget _buildSaveButton(BuildContext context) {
    return SizedBox(
      height: 414.v,
      width: 412.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildBreadRow(
                    context,
                    text: "lbl_ingredientes".tr,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillPrimaryContainer,
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle124163,
                              height: 56.adaptSize,
                              width: 56.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 1.v),
                            ),
                            Container(
                              width: 186.h,
                              margin: EdgeInsets.only(
                                left: 16.h,
                                top: 11.v,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_tomate".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    TextSpan(
                                      text: "msg_4_rebanadas_de_tomate".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(
                                top: 17.v,
                                right: 12.h,
                                bottom: 17.v,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIconsCheckSmall,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.fillPrimaryContainer,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle124164,
                              height: 56.adaptSize,
                              width: 56.adaptSize,
                            ),
                            Container(
                              width: 152.h,
                              margin: EdgeInsets.only(
                                left: 16.h,
                                top: 8.v,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_pepinillos".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    TextSpan(
                                      text: "msg_4_rebanadas_de_pepinillo".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgUpload,
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 4.v),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.fillPrimaryContainer,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle124165,
                                  height: 56.adaptSize,
                                  width: 56.adaptSize,
                                ),
                                Container(
                                  width: 167.h,
                                  margin: EdgeInsets.only(
                                    left: 16.h,
                                    top: 8.v,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_cebolla".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                        TextSpan(
                                          text: "msg_3_aros_de_cebolla".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(
                                top: 16.v,
                                right: 12.h,
                                bottom: 16.v,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIconsCheckSmall,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 144.v,
                        width: 380.h,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 72.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 6.v,
                                ),
                                decoration: AppDecoration.fillPrimaryContainer,
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle124166,
                                      height: 56.adaptSize,
                                      width: 56.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 1.v),
                                    ),
                                    Container(
                                      width: 207.h,
                                      margin: EdgeInsets.only(
                                        left: 16.h,
                                        top: 10.v,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_queso".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                            TextSpan(
                                              text:
                                                  "msg_2_rebanadas_de_queso".tr,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(
                                        top: 17.v,
                                        right: 12.h,
                                        bottom: 17.v,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 18.adaptSize,
                                              width: 18.adaptSize,
                                              decoration: BoxDecoration(
                                                color:
                                                    theme.colorScheme.primary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  2.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconsCheckSmall,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomElevatedButton(
                              width: 133.h,
                              text: "lbl_guardar".tr,
                              margin: EdgeInsets.only(
                                top: 21.v,
                                right: 3.h,
                              ),
                              leftIcon: Container(
                                margin: EdgeInsets.only(right: 12.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgCheckmark,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                              alignment: Alignment.topRight,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.only(top: 72.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 6.v,
                                ),
                                decoration:
                                    AppDecoration.fillPrimaryContainer.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL181,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle124167,
                                      height: 56.adaptSize,
                                      width: 56.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 1.v),
                                    ),
                                    Container(
                                      width: 116.h,
                                      margin: EdgeInsets.only(
                                        left: 16.h,
                                        top: 11.v,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_mostaza".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                            TextSpan(
                                              text: "msg_1_pizca_de_mostaza".tr,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(
                                        top: 17.v,
                                        right: 12.h,
                                        bottom: 17.v,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 18.adaptSize,
                                              width: 18.adaptSize,
                                              decoration: BoxDecoration(
                                                color:
                                                    theme.colorScheme.primary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  2.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconsCheckSmall,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 354.v),
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
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheeseRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1241613,
            height: 56.adaptSize,
            width: 56.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Container(
            width: 212.h,
            margin: EdgeInsets.only(left: 16.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_queso".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  TextSpan(
                    text: "msg_2_rebanadas_extra".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.fromLTRB(28.h, 17.v, 12.h, 17.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconsCheckSmall,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildBreadRow(
    BuildContext context, {
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.h, 8.v, 16.h, 7.v),
      decoration: AppDecoration.outlineGray600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              text,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFlechaSeleccionarOnprimarycontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildGlutenFreeBreadRow(
    BuildContext context, {
    required String userImage,
    required String labelText,
    required String iconImage,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 56.adaptSize,
            width: 56.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: Text(
              labelText,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          CustomImageView(
            imagePath: iconImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.fromLTRB(28.h, 16.v, 12.h, 16.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPicklesRow(
    BuildContext context, {
    required String userImage,
    required String messageText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 56.adaptSize,
            width: 56.adaptSize,
          ),
          Container(
            width: 212.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_pepinillos".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  TextSpan(
                    text: "msg_3_rebanadas_extra2".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUpload,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 4.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }
}
