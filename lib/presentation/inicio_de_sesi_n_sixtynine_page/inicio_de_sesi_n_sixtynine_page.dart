import '../inicio_de_sesi_n_sixtynine_page/widgets/reservaactivalist2_item_widget.dart';
import 'bloc/inicio_de_sesi_n_sixtynine_bloc.dart';
import 'models/inicio_de_sesi_n_sixtynine_model.dart';
import 'models/reservaactivalist2_item_model.dart';
import 'package:asaf_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InicioDeSesiNSixtyninePage extends StatefulWidget {
  const InicioDeSesiNSixtyninePage({Key? key})
      : super(
          key: key,
        );

  @override
  InicioDeSesiNSixtyninePageState createState() =>
      InicioDeSesiNSixtyninePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InicioDeSesiNSixtynineBloc>(
      create: (context) =>
          InicioDeSesiNSixtynineBloc(InicioDeSesiNSixtynineState(
        inicioDeSesiNSixtynineModelObj: InicioDeSesiNSixtynineModel(),
      ))
            ..add(InicioDeSesiNSixtynineInitialEvent()),
      child: InicioDeSesiNSixtyninePage(),
    );
  }
}

class InicioDeSesiNSixtyninePageState extends State<InicioDeSesiNSixtyninePage>
    with AutomaticKeepAliveClientMixin<InicioDeSesiNSixtyninePage> {
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
              SizedBox(height: 16.v),
              _buildReservaActivaList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReservaActivaList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<InicioDeSesiNSixtynineBloc,
          InicioDeSesiNSixtynineState, InicioDeSesiNSixtynineModel?>(
        selector: (state) => state.inicioDeSesiNSixtynineModelObj,
        builder: (context, inicioDeSesiNSixtynineModelObj) {
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
            itemCount: inicioDeSesiNSixtynineModelObj
                    ?.reservaactivalist2ItemList.length ??
                0,
            itemBuilder: (context, index) {
              Reservaactivalist2ItemModel model = inicioDeSesiNSixtynineModelObj
                      ?.reservaactivalist2ItemList[index] ??
                  Reservaactivalist2ItemModel();
              return Reservaactivalist2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
