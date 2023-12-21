import 'bloc/inicio_de_sesi_n_ten_bloc.dart';
import 'models/inicio_de_sesi_n_ten_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:asaf_s_application2/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class InicioDeSesiNTenScreen extends StatelessWidget {
  const InicioDeSesiNTenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNTenBloc>(
      create: (context) => InicioDeSesiNTenBloc(InicioDeSesiNTenState(
        inicioDeSesiNTenModelObj: InicioDeSesiNTenModel(),
      ))
        ..add(InicioDeSesiNTenInitialEvent()),
      child: InicioDeSesiNTenScreen(),
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
                  _buildCodigoInicioDe(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCodigoInicioDe(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 50.h,
          top: 254.v,
          right: 50.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL28,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 24.v),
                  SizedBox(
                    width: 140.h,
                    child: Text(
                      "msg_recuperar_contrase_a".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Container(
                    width: 229.h,
                    margin: EdgeInsets.only(right: 34.h),
                    child: Text(
                      "msg_a_continuaci_n_ingrese".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray800.copyWith(
                        height: 1.43,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  BlocSelector<InicioDeSesiNTenBloc, InicioDeSesiNTenState,
                      TextEditingController?>(
                    selector: (state) => state.otpController,
                    builder: (context, otpController) {
                      return CustomPinCodeTextField(
                        context: context,
                        controller: otpController,
                        onChanged: (value) {
                          otpController?.text = value;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 36.h,
                vertical: 31.v,
              ),
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
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
    );
  }
}
