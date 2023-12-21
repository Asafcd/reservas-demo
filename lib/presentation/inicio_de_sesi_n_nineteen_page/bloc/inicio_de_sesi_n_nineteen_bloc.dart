import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/baroasisslider_item_model.dart';
import '../models/baroasis_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_nineteen_page/models/inicio_de_sesi_n_nineteen_model.dart';
part 'inicio_de_sesi_n_nineteen_event.dart';
part 'inicio_de_sesi_n_nineteen_state.dart';

/// A bloc that manages the state of a InicioDeSesiNNineteen according to the event that is dispatched to it.
class InicioDeSesiNNineteenBloc
    extends Bloc<InicioDeSesiNNineteenEvent, InicioDeSesiNNineteenState> {
  InicioDeSesiNNineteenBloc(InicioDeSesiNNineteenState initialState)
      : super(initialState) {
    on<InicioDeSesiNNineteenInitialEvent>(_onInitialize);
  }

  List<BaroasissliderItemModel> fillBaroasissliderItemList() {
    return [BaroasissliderItemModel(image: ImageConstant.imgRectangle12405)];
  }

  List<BaroasisItemModel> fillBaroasisItemList() {
    return [
      BaroasisItemModel(
          dynamicImage: ImageConstant.imgRectangle12406,
          dynamicText: "Bar Oasis",
          dynamicImage1: ImageConstant.imgStar214x14,
          dynamicText1: "4.8 - 1,200 reviews",
          dynamicText2: "Viernes - Domingo",
          dynamicText3: "4:00 p.m. - 3:00 a.m."),
      BaroasisItemModel(
          dynamicImage: ImageConstant.imgRectangle12407,
          dynamicText: "Bar Oasis",
          dynamicImage1: ImageConstant.imgStar21,
          dynamicText1: "4.8 - 1,200 reviews",
          dynamicText2: "Viernes - Domingo",
          dynamicText3: "4:00 p.m. - 3:00 a.m."),
      BaroasisItemModel(
          dynamicImage: ImageConstant.imgRectangle12407138x152,
          dynamicText: "Bar Oasis",
          dynamicImage1: ImageConstant.imgStar22,
          dynamicText1: "4.8 - 1,200 reviews",
          dynamicText2: "Viernes - Domingo",
          dynamicText3: "4:00 p.m. - 3:00 a.m."),
      BaroasisItemModel(
          dynamicImage: ImageConstant.imgRectangle124071,
          dynamicText: "Bar Oasis",
          dynamicImage1: ImageConstant.imgStar23,
          dynamicText1: "4.8 - 1,200 reviews",
          dynamicText2: "Viernes - Domingo",
          dynamicText3: "4:00 p.m. - 3:00 a.m.")
    ];
  }

  _onInitialize(
    InicioDeSesiNNineteenInitialEvent event,
    Emitter<InicioDeSesiNNineteenState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNNineteenModelObj:
            state.inicioDeSesiNNineteenModelObj?.copyWith(
      baroasissliderItemList: fillBaroasissliderItemList(),
      baroasisItemList: fillBaroasisItemList(),
    )));
  }
}
