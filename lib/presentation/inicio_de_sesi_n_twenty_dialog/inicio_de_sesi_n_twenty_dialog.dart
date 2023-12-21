import 'bloc/inicio_de_sesi_n_twenty_bloc.dart';
import 'models/inicio_de_sesi_n_twenty_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNTwentyDialog extends StatelessWidget {
  const InicioDeSesiNTwentyDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNTwentyBloc>(
      create: (context) => InicioDeSesiNTwentyBloc(InicioDeSesiNTwentyState(
        inicioDeSesiNTwentyModelObj: InicioDeSesiNTwentyModel(),
      ))
        ..add(InicioDeSesiNTwentyInitialEvent()),
      child: InicioDeSesiNTwentyDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 312.h,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 149.h,
            child: Text(
              "msg_permisos_de_localizaci_n".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            width: 256.h,
            margin: EdgeInsets.only(right: 7.h),
            child: Text(
              "msg_para_brindarle_un".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumGray800.copyWith(
                height: 1.43,
              ),
            ),
          ),
          SizedBox(height: 33.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "lbl_rechazar".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_aceptar".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }
}
