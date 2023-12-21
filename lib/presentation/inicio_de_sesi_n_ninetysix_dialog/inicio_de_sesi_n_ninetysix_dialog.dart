import 'bloc/inicio_de_sesi_n_ninetysix_bloc.dart';
import 'models/inicio_de_sesi_n_ninetysix_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNNinetysixDialog extends StatelessWidget {
  const InicioDeSesiNNinetysixDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNNinetysixBloc>(
      create: (context) =>
          InicioDeSesiNNinetysixBloc(InicioDeSesiNNinetysixState(
        inicioDeSesiNNinetysixModelObj: InicioDeSesiNNinetysixModel(),
      ))
            ..add(InicioDeSesiNNinetysixInitialEvent()),
      child: InicioDeSesiNNinetysixDialog(),
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
          Container(
            width: 252.h,
            margin: EdgeInsets.only(right: 11.h),
            child: Text(
              "msg_comentario_enviado".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: 261.h,
            child: Text(
              "msg_su_publicaci_n_fue".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumGray800.copyWith(
                height: 1.43,
              ),
            ),
          ),
          SizedBox(height: 35.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 11.h),
              child: Text(
                "lbl_aceptar".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }
}
