import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/reservaactiva_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortynine_page/models/inicio_de_sesi_n_fortynine_model.dart';
part 'inicio_de_sesi_n_fortynine_event.dart';
part 'inicio_de_sesi_n_fortynine_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFortynine according to the event that is dispatched to it.
class InicioDeSesiNFortynineBloc
    extends Bloc<InicioDeSesiNFortynineEvent, InicioDeSesiNFortynineState> {
  InicioDeSesiNFortynineBloc(InicioDeSesiNFortynineState initialState)
      : super(initialState) {
    on<InicioDeSesiNFortynineInitialEvent>(_onInitialize);
  }

  List<ReservaactivaItemModel> fillReservaactivaItemList() {
    return [
      ReservaactivaItemModel(
          image: ImageConstant.imgRectangle1240772x72,
          text: "Magic Coffee ",
          image1: ImageConstant.imgStar222,
          text1: "4.8 - 1,200 reviews",
          text2: "Lunes - Domingo",
          text3: "8:30 p.m. - 11:30 p.m.",
          text4: "a 3.1 km de ti"),
      ReservaactivaItemModel(
          image: ImageConstant.imgRectangle124073,
          text: "Bar Oasis",
          image1: ImageConstant.imgStar223,
          text1: "4.8 - 1,200 reviews",
          text2: "Viernes - Domingo",
          text3: "9:00 p.m. - 11:30 p.m.",
          text4: "a 3.5 km de ti"),
      ReservaactivaItemModel(
          image: ImageConstant.imgRectangle124074,
          text: "Karaoke Fortuna",
          image1: ImageConstant.imgStar224,
          text1: "4.8 - 1,200 reviews",
          text2: "Viernes - Domingo",
          text3: "6:00 p.m. - 3:00 a.m.",
          text4: "a 8.2 km de ti"),
      ReservaactivaItemModel(
          image: ImageConstant.imgRectangle124075,
          text: "Globo gourmet",
          image1: ImageConstant.imgStar225,
          text1: "4.8 - 1,200 reviews",
          text2: "Viernes - Domingo",
          text3: "9:00 p.m. - 11:30 p.m.",
          text4: "a 11.2 km de ti")
    ];
  }

  _onInitialize(
    InicioDeSesiNFortynineInitialEvent event,
    Emitter<InicioDeSesiNFortynineState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        inicioDeSesiNFortynineModelObj:
            state.inicioDeSesiNFortynineModelObj?.copyWith(
      reservaactivaItemList: fillReservaactivaItemList(),
    )));
  }
}
