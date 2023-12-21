import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget2_item_model.dart';
import '../models/foodinformationlist_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftytwo_screen/models/inicio_de_sesi_n_fiftytwo_model.dart';
part 'inicio_de_sesi_n_fiftytwo_event.dart';
part 'inicio_de_sesi_n_fiftytwo_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFiftytwo according to the event that is dispatched to it.
class InicioDeSesiNFiftytwoBloc
    extends Bloc<InicioDeSesiNFiftytwoEvent, InicioDeSesiNFiftytwoState> {
  InicioDeSesiNFiftytwoBloc(InicioDeSesiNFiftytwoState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiftytwoInitialEvent>(_onInitialize);
  }

  List<Widget2ItemModel> fillWidget2ItemList() {
    return List.generate(1, (index) => Widget2ItemModel());
  }

  List<FoodinformationlistItemModel> fillFoodinformationlistItemList() {
    return [
      FoodinformationlistItemModel(
          foodName: "Hamburguesa de pollo 01",
          foodPrice: "Todos los ingredientes incluidos \nPan regular"),
      FoodinformationlistItemModel(
          foodName: "Hamburguesa de pollo 02",
          foodPrice: "Todos los ingredientes incluidos \nPan regular")
    ];
  }

  _onInitialize(
    InicioDeSesiNFiftytwoInitialEvent event,
    Emitter<InicioDeSesiNFiftytwoState> emit,
  ) async {
    emit(state.copyWith(
      topAppBarController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNFiftytwoModelObj:
            state.inicioDeSesiNFiftytwoModelObj?.copyWith(
      widget2ItemList: fillWidget2ItemList(),
      foodinformationlistItemList: fillFoodinformationlistItemList(),
    )));
  }
}
