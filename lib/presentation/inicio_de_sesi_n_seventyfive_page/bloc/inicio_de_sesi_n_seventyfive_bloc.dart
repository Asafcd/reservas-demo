import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/baroasisslider2_item_model.dart';
import '../models/baroasis5_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventyfive_page/models/inicio_de_sesi_n_seventyfive_model.dart';
part 'inicio_de_sesi_n_seventyfive_event.dart';
part 'inicio_de_sesi_n_seventyfive_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventyfive according to the event that is dispatched to it.
class InicioDeSesiNSeventyfiveBloc
    extends Bloc<InicioDeSesiNSeventyfiveEvent, InicioDeSesiNSeventyfiveState> {
  InicioDeSesiNSeventyfiveBloc(InicioDeSesiNSeventyfiveState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventyfiveInitialEvent>(_onInitialize);
  }

  List<Baroasisslider2ItemModel> fillBaroasisslider2ItemList() {
    return [Baroasisslider2ItemModel(image: ImageConstant.imgRectangle12405)];
  }

  List<Baroasis5ItemModel> fillBaroasis5ItemList() {
    return [
      Baroasis5ItemModel(
          dynamicImage: ImageConstant.imgRectangle12406,
          dynamicText: "Bar Oasis",
          dynamicImage1: ImageConstant.imgStar227,
          dynamicText1: "4.8 - 1,200 reviews",
          dynamicText2: "Viernes - Domingo",
          dynamicText3: "4:00 p.m. - 3:00 a.m."),
      Baroasis5ItemModel(
          dynamicImage: ImageConstant.imgRectangle12407,
          dynamicText: "Bar Oasis",
          dynamicImage1: ImageConstant.imgStar228,
          dynamicText1: "4.8 - 1,200 reviews",
          dynamicText2: "Viernes - Domingo",
          dynamicText3: "4:00 p.m. - 3:00 a.m."),
      Baroasis5ItemModel(
          dynamicImage: ImageConstant.imgRectangle12407138x152,
          dynamicText: "Bar Oasis",
          dynamicImage1: ImageConstant.imgStar229,
          dynamicText1: "4.8 - 1,200 reviews",
          dynamicText2: "Viernes - Domingo",
          dynamicText3: "4:00 p.m. - 3:00 a.m."),
      Baroasis5ItemModel(
          dynamicImage: ImageConstant.imgRectangle124071,
          dynamicText: "Bar Oasis",
          dynamicImage1: ImageConstant.imgStar230,
          dynamicText1: "4.8 - 1,200 reviews",
          dynamicText2: "Viernes - Domingo",
          dynamicText3: "4:00 p.m. - 3:00 a.m.")
    ];
  }

  _onInitialize(
    InicioDeSesiNSeventyfiveInitialEvent event,
    Emitter<InicioDeSesiNSeventyfiveState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNSeventyfiveModelObj:
            state.inicioDeSesiNSeventyfiveModelObj?.copyWith(
      baroasisslider2ItemList: fillBaroasisslider2ItemList(),
      baroasis5ItemList: fillBaroasis5ItemList(),
    )));
  }
}
