import 'bloc/inicio_de_sesi_n_seventeen_bloc.dart';
import 'models/inicio_de_sesi_n_seventeen_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_drop_down.dart';
import 'package:asaf_s_application2/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNSeventeenScreen extends StatelessWidget {
  const InicioDeSesiNSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSeventeenBloc>(
      create: (context) =>
          InicioDeSesiNSeventeenBloc(InicioDeSesiNSeventeenState(
        inicioDeSesiNSeventeenModelObj: InicioDeSesiNSeventeenModel(),
      ))
            ..add(InicioDeSesiNSeventeenInitialEvent()),
      child: InicioDeSesiNSeventeenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray6007f,
                width: 8.h,
              ),
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: Container(
              height: 852.v,
              width: 412.h,
              decoration: AppDecoration.outlineGrayF.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIntersect,
                    height: 852.v,
                    width: 412.h,
                    radius: BorderRadius.circular(
                      18.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 50.h,
                        top: 180.v,
                        right: 50.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            decoration:
                                AppDecoration.fillPrimaryContainer.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL28,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 23.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "lbl_registro".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                BlocSelector<
                                    InicioDeSesiNSeventeenBloc,
                                    InicioDeSesiNSeventeenState,
                                    TextEditingController?>(
                                  selector: (state) =>
                                      state.firstNameController,
                                  builder: (context, firstNameController) {
                                    return CustomFloatingTextField(
                                      controller: firstNameController,
                                      labelText: "lbl_nombre_s".tr,
                                      labelStyle:
                                          CustomTextStyles.bodyLargeGray9000116,
                                      hintText: "lbl_nombre_s".tr,
                                      contentPadding: EdgeInsets.fromLTRB(
                                          16.h, 15.v, 16.h, 16.v),
                                    );
                                  },
                                ),
                                SizedBox(height: 6.v),
                                BlocSelector<
                                    InicioDeSesiNSeventeenBloc,
                                    InicioDeSesiNSeventeenState,
                                    TextEditingController?>(
                                  selector: (state) => state.lastNameController,
                                  builder: (context, lastNameController) {
                                    return CustomFloatingTextField(
                                      controller: lastNameController,
                                      labelText: "lbl_apellido_s".tr,
                                      labelStyle:
                                          CustomTextStyles.bodyLargeGray9000116,
                                      hintText: "lbl_apellido_s".tr,
                                      contentPadding: EdgeInsets.fromLTRB(
                                          16.h, 15.v, 16.h, 16.v),
                                    );
                                  },
                                ),
                                SizedBox(height: 6.v),
                                BlocSelector<
                                    InicioDeSesiNSeventeenBloc,
                                    InicioDeSesiNSeventeenState,
                                    TextEditingController?>(
                                  selector: (state) => state.usernameController,
                                  builder: (context, usernameController) {
                                    return CustomFloatingTextField(
                                      controller: usernameController,
                                      labelText: "msg_nombre_de_usuario".tr,
                                      labelStyle:
                                          CustomTextStyles.bodyLargeGray9000116,
                                      hintText: "msg_nombre_de_usuario".tr,
                                      textInputAction: TextInputAction.done,
                                      contentPadding: EdgeInsets.fromLTRB(
                                          16.h, 15.v, 16.h, 16.v),
                                    );
                                  },
                                ),
                                SizedBox(height: 14.v),
                                _buildModalConCampos(context),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 36.h,
                              vertical: 31.v,
                            ),
                            decoration:
                                AppDecoration.fillPrimaryContainer.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL28,
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
                          ),
                        ],
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
  Widget _buildModalConCampos(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 18.v,
          width: 136.h,
          margin: EdgeInsets.only(left: 10.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 16.v,
                  width: 136.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_fecha_de_nacimiento".tr,
                  style: CustomTextStyles.bodySmallGray800,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 3.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 6.h),
                child: BlocSelector<InicioDeSesiNSeventeenBloc,
                    InicioDeSesiNSeventeenState, InicioDeSesiNSeventeenModel?>(
                  selector: (state) => state.inicioDeSesiNSeventeenModelObj,
                  builder: (context, inicioDeSesiNSeventeenModelObj) {
                    return CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.only(left: 29.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFlechaSeleccionar,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                        ),
                      ),
                      hintText: "lbl_12".tr,
                      items: inicioDeSesiNSeventeenModelObj?.dropdownItemList ??
                          [],
                      contentPadding: EdgeInsets.only(
                        left: 8.h,
                        top: 16.v,
                        bottom: 16.v,
                      ),
                      onChanged: (value) {
                        context
                            .read<InicioDeSesiNSeventeenBloc>()
                            .add(ChangeDropDownEvent(value: value));
                      },
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: BlocSelector<InicioDeSesiNSeventeenBloc,
                    InicioDeSesiNSeventeenState, InicioDeSesiNSeventeenModel?>(
                  selector: (state) => state.inicioDeSesiNSeventeenModelObj,
                  builder: (context, inicioDeSesiNSeventeenModelObj) {
                    return CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.only(left: 11.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFlechaSeleccionar,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                        ),
                      ),
                      hintText: "lbl_ago".tr,
                      items:
                          inicioDeSesiNSeventeenModelObj?.dropdownItemList1 ??
                              [],
                      contentPadding: EdgeInsets.only(
                        left: 8.h,
                        top: 16.v,
                        bottom: 16.v,
                      ),
                      onChanged: (value) {
                        context
                            .read<InicioDeSesiNSeventeenBloc>()
                            .add(ChangeDropDown1Event(value: value));
                      },
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: BlocSelector<InicioDeSesiNSeventeenBloc,
                    InicioDeSesiNSeventeenState, InicioDeSesiNSeventeenModel?>(
                  selector: (state) => state.inicioDeSesiNSeventeenModelObj,
                  builder: (context, inicioDeSesiNSeventeenModelObj) {
                    return CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.only(left: 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFlechaSeleccionar,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                        ),
                      ),
                      hintText: "lbl_1998".tr,
                      items:
                          inicioDeSesiNSeventeenModelObj?.dropdownItemList2 ??
                              [],
                      contentPadding: EdgeInsets.only(
                        left: 8.h,
                        top: 16.v,
                        bottom: 16.v,
                      ),
                      onChanged: (value) {
                        context
                            .read<InicioDeSesiNSeventeenBloc>()
                            .add(ChangeDropDown2Event(value: value));
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
