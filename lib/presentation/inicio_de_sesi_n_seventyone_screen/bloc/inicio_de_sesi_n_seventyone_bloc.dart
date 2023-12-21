import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/activereservations_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventyone_screen/models/inicio_de_sesi_n_seventyone_model.dart';
part 'inicio_de_sesi_n_seventyone_event.dart';
part 'inicio_de_sesi_n_seventyone_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventyone according to the event that is dispatched to it.
class InicioDeSesiNSeventyoneBloc
    extends Bloc<InicioDeSesiNSeventyoneEvent, InicioDeSesiNSeventyoneState> {
  InicioDeSesiNSeventyoneBloc(InicioDeSesiNSeventyoneState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSeventyoneInitialEvent event,
    Emitter<InicioDeSesiNSeventyoneState> emit,
  ) async {
    emit(state.copyWith(
        inicioDeSesiNSeventyoneModelObj:
            state.inicioDeSesiNSeventyoneModelObj?.copyWith(
      activereservationsItemList: fillActivereservationsItemList(),
    )));
  }

  List<ActivereservationsItemModel> fillActivereservationsItemList() {
    return [
      ActivereservationsItemModel(
          rowImage: ImageConstant.imgRectangle124076,
          text1: "Gracias por compartirnos",
          text2: "Todas las noches",
          text3: "9:00 a.m. - 3:00 a.m.",
          text4: "01/Ago/2023 - 15/Ago/2023.",
          text5: "Bar Oasis a 11.2 km de ti",
          text6: "20% de descuento en todos nuestros platillos."),
      ActivereservationsItemModel(
          rowImage: ImageConstant.imgRectangle124077,
          text1: "Noche de chicas",
          text2: "Todas las noches",
          text3: "9:00 p.m. - 3:00 a.m.",
          text4: "01/Ago/2023 - 30/Ago/2023.",
          text5: "Bar Oasis a 11.2 km de ti",
          text6: "20% de descuento en bebidas seleccionadas.")
    ];
  }
}
