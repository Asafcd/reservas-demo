import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/reservaactivalist2_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_sixtynine_page/models/inicio_de_sesi_n_sixtynine_model.dart';
part 'inicio_de_sesi_n_sixtynine_event.dart';
part 'inicio_de_sesi_n_sixtynine_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSixtynine according to the event that is dispatched to it.
class InicioDeSesiNSixtynineBloc
    extends Bloc<InicioDeSesiNSixtynineEvent, InicioDeSesiNSixtynineState> {
  InicioDeSesiNSixtynineBloc(InicioDeSesiNSixtynineState initialState)
      : super(initialState) {
    on<InicioDeSesiNSixtynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSixtynineInitialEvent event,
    Emitter<InicioDeSesiNSixtynineState> emit,
  ) async {
    emit(state.copyWith(
        inicioDeSesiNSixtynineModelObj:
            state.inicioDeSesiNSixtynineModelObj?.copyWith(
      reservaactivalist2ItemList: fillReservaactivalist2ItemList(),
    )));
  }

  List<Reservaactivalist2ItemModel> fillReservaactivalist2ItemList() {
    return [
      Reservaactivalist2ItemModel(
          image: ImageConstant.imgRectangle124076,
          text: "Gracias por compartirnos",
          text1: "Todas las noches",
          text2: "9:00 a.m. - 3:00 a.m.",
          text3: "01/Ago/2023 - 15/Ago/2023.",
          text4: "Bar Oasis a 11.2 km de ti",
          image1: ImageConstant.imgPercent,
          text5: "20% de descuento en todos nuestros platillos."),
      Reservaactivalist2ItemModel(
          image: ImageConstant.imgRectangle124077,
          text: "Noche de chicas",
          text1: "Todas las noches",
          text2: "9:00 p.m. - 3:00 a.m.",
          text3: "01/Ago/2023 - 30/Ago/2023.",
          text4: "Bar Oasis a 11.2 km de ti",
          image1: ImageConstant.imgPercent,
          text5: "20% de descuento en bebidas seleccionadas."),
      Reservaactivalist2ItemModel(
          image: ImageConstant.imgRectangle124078,
          text: "Miércoles de papas locas",
          text1: "Miércoles",
          text2: "9:00 p.m. - 3:00 a.m.",
          text3: "01/Ene/2023 - 31/Dic/2023.",
          text4: "Bar Oasis a 11.2 km de ti",
          image1: ImageConstant.imgFastfood,
          text5: "2 x 100.00 MXN en entradas seleccionadas.")
    ];
  }
}
