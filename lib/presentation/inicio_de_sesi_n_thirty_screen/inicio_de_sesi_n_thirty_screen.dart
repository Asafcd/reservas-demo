import '../inicio_de_sesi_n_thirty_screen/widgets/dynamiclist_item_widget.dart';
import 'bloc/inicio_de_sesi_n_thirty_bloc.dart';
import 'models/dynamiclist_item_model.dart';
import 'models/inicio_de_sesi_n_thirty_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:asaf_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:asaf_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:asaf_s_application2/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNThirtyScreen extends StatelessWidget {
  const InicioDeSesiNThirtyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNThirtyBloc>(
      create: (context) => InicioDeSesiNThirtyBloc(InicioDeSesiNThirtyState(
        inicioDeSesiNThirtyModelObj: InicioDeSesiNThirtyModel(),
      ))
        ..add(InicioDeSesiNThirtyInitialEvent()),
      child: InicioDeSesiNThirtyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Container(
            width: 412.h,
            decoration: AppDecoration.outlineGrayF.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildAppBar(context),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_selecci_n_de_reas".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 18.v),
                      BlocSelector<InicioDeSesiNThirtyBloc,
                          InicioDeSesiNThirtyState, InicioDeSesiNThirtyModel?>(
                        selector: (state) => state.inicioDeSesiNThirtyModelObj,
                        builder: (context, inicioDeSesiNThirtyModelObj) {
                          return CustomDropDown(
                            width: 120.h,
                            icon: Container(
                              margin: EdgeInsets.only(left: 19.h),
                              child: CustomImageView(
                                imagePath: ImageConstant
                                    .imgFlechaSeleccionarSecondarycontainer,
                                height: 28.adaptSize,
                                width: 28.adaptSize,
                              ),
                            ),
                            hintText: "lbl_personas".tr,
                            items:
                                inicioDeSesiNThirtyModelObj?.dropdownItemList ??
                                    [],
                            onChanged: (value) {
                              context
                                  .read<InicioDeSesiNThirtyBloc>()
                                  .add(ChangeDropDownEvent(value: value));
                            },
                          );
                        },
                      ),
                      _buildPriceStack(context),
                      SizedBox(height: 16.v),
                      _buildActions(context),
                    ],
                  ),
                ),
                Spacer(),
                _buildTotalRow(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 20.v,
          bottom: 20.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_product".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLockGray800,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 20.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildPriceStack(BuildContext context) {
    return SizedBox(
      height: 428.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(
                top: 16.v,
                bottom: 321.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle12416,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 4.v),
                  ),
                  Container(
                    width: 208.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      top: 4.v,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_mesa_vip".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: "msg_150_00_mxn_lorem".tr,
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
                      left: 10.h,
                      top: 8.v,
                      bottom: 8.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 214.v,
                  width: 380.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 122.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 4.v,
                                ),
                                decoration:
                                    AppDecoration.fillPrimaryContainer.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    Text(
                                      "lbl_1".tr,
                                      style: CustomTextStyles.bodyMediumGray600,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 122.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 3.v,
                                ),
                                decoration: AppDecoration.fillPrimaryContainer,
                                child: Text(
                                  "lbl_2".tr,
                                  style: CustomTextStyles.bodyMediumGray600,
                                ),
                              ),
                              Container(
                                width: 122.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 3.v,
                                ),
                                decoration: AppDecoration.fillPrimaryContainer,
                                child: Text(
                                  "lbl_32".tr,
                                  style: CustomTextStyles.bodyMediumGray600,
                                ),
                              ),
                              Container(
                                width: 122.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 3.v,
                                ),
                                decoration: AppDecoration.fillPrimaryContainer,
                                child: Text(
                                  "lbl_4".tr,
                                  style: CustomTextStyles.bodyMediumGray600,
                                ),
                              ),
                              Container(
                                width: 122.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 3.v,
                                ),
                                decoration: AppDecoration.fillPrimaryContainer,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 1.v),
                                    Text(
                                      "lbl_5".tr,
                                      style: CustomTextStyles.bodyMediumGray600,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: AppDecoration.fillPrimaryContainer,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 3.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                        "lbl_6".tr,
                                        style:
                                            CustomTextStyles.bodyMediumGray600,
                                      ),
                                    ),
                                    SizedBox(height: 4.v),
                                    SizedBox(
                                      width: 122.h,
                                      child: Divider(
                                        color:
                                            theme.colorScheme.primaryContainer,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 123.v),
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.h,
                            vertical: 13.v,
                          ),
                          decoration:
                              AppDecoration.fillPrimaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder18,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle1241656x56,
                                height: 56.adaptSize,
                                width: 56.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 4.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 4.v,
                                  right: 4.h,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 208.h,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_mesa_normal".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                            TextSpan(
                                              text: "msg_100_00_mxn_lorem".tr,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgStateLayer,
                                      height: 40.adaptSize,
                                      width: 40.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 14.h,
                                        top: 8.v,
                                        bottom: 12.v,
                                      ),
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
                SizedBox(height: 16.v),
                BlocSelector<InicioDeSesiNThirtyBloc, InicioDeSesiNThirtyState,
                    InicioDeSesiNThirtyModel?>(
                  selector: (state) => state.inicioDeSesiNThirtyModelObj,
                  builder: (context, inicioDeSesiNThirtyModelObj) {
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
                      itemCount: inicioDeSesiNThirtyModelObj
                              ?.dynamiclistItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        DynamiclistItemModel model = inicioDeSesiNThirtyModelObj
                                ?.dynamiclistItemList[index] ??
                            DynamiclistItemModel();
                        return DynamiclistItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_cancelar".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32.h,
              top: 3.v,
            ),
            child: Text(
              "lbl_aceptar".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalRow(BuildContext context) {
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
