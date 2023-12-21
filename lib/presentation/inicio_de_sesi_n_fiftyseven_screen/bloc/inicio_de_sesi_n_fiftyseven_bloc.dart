import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget7_item_model.dart';
import '../models/foodinformationlist1_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftyseven_screen/models/inicio_de_sesi_n_fiftyseven_model.dart';
part 'inicio_de_sesi_n_fiftyseven_event.dart';
part 'inicio_de_sesi_n_fiftyseven_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFiftyseven according to the event that is dispatched to it.
class InicioDeSesiNFiftysevenBloc
    extends Bloc<InicioDeSesiNFiftysevenEvent, InicioDeSesiNFiftysevenState> {
  InicioDeSesiNFiftysevenBloc(InicioDeSesiNFiftysevenState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiftysevenInitialEvent>(_onInitialize);
  }

  List<Widget7ItemModel> fillWidget7ItemList() {
    return List.generate(1, (index) => Widget7ItemModel());
  }

  List<Foodinformationlist1ItemModel> fillFoodinformationlist1ItemList() {
    return [
      Foodinformationlist1ItemModel(
          foodName: "Hamburguesa de pollo 01",
          foodDescription: "Sin pepinillos\nPan integral\nQueso extra"),
      Foodinformationlist1ItemModel(
          foodName: "Hamburguesa de pollo 02",
          foodDescription: "Todos los ingredientes incluidos \nPan regular")
    ];
  }

  _onInitialize(
    InicioDeSesiNFiftysevenInitialEvent event,
    Emitter<InicioDeSesiNFiftysevenState> emit,
  ) async {
    emit(state.copyWith(
      topAppBarController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNFiftysevenModelObj:
            state.inicioDeSesiNFiftysevenModelObj?.copyWith(
      widget7ItemList: fillWidget7ItemList(),
      foodinformationlist1ItemList: fillFoodinformationlist1ItemList(),
    )));
  }
}
