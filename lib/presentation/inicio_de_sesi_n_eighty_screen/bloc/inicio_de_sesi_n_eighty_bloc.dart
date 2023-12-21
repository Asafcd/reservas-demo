import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget19_item_model.dart';
import '../models/foodinformationlist2_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eighty_screen/models/inicio_de_sesi_n_eighty_model.dart';
part 'inicio_de_sesi_n_eighty_event.dart';
part 'inicio_de_sesi_n_eighty_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEighty according to the event that is dispatched to it.
class InicioDeSesiNEightyBloc
    extends Bloc<InicioDeSesiNEightyEvent, InicioDeSesiNEightyState> {
  InicioDeSesiNEightyBloc(InicioDeSesiNEightyState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightyInitialEvent>(_onInitialize);
  }

  List<Widget19ItemModel> fillWidget19ItemList() {
    return List.generate(1, (index) => Widget19ItemModel());
  }

  List<Foodinformationlist2ItemModel> fillFoodinformationlist2ItemList() {
    return [
      Foodinformationlist2ItemModel(
          foodName: "Hamburguesa de pollo 01",
          foodDescription: "Sin pepinillos\nPan integral\nQueso extra"),
      Foodinformationlist2ItemModel(
          foodName: "Hamburguesa de pollo 02",
          foodDescription: "Todos los ingredientes incluidos \nPan regular")
    ];
  }

  _onInitialize(
    InicioDeSesiNEightyInitialEvent event,
    Emitter<InicioDeSesiNEightyState> emit,
  ) async {
    emit(state.copyWith(
      topAppBarController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNEightyModelObj:
            state.inicioDeSesiNEightyModelObj?.copyWith(
      widget19ItemList: fillWidget19ItemList(),
      foodinformationlist2ItemList: fillFoodinformationlist2ItemList(),
    )));
  }
}
