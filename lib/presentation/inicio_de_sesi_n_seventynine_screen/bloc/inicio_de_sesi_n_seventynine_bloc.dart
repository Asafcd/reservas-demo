import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget14_item_model.dart';
import '../models/foodinfolist_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventynine_screen/models/inicio_de_sesi_n_seventynine_model.dart';
part 'inicio_de_sesi_n_seventynine_event.dart';
part 'inicio_de_sesi_n_seventynine_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventynine according to the event that is dispatched to it.
class InicioDeSesiNSeventynineBloc
    extends Bloc<InicioDeSesiNSeventynineEvent, InicioDeSesiNSeventynineState> {
  InicioDeSesiNSeventynineBloc(InicioDeSesiNSeventynineState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventynineInitialEvent>(_onInitialize);
  }

  List<Widget14ItemModel> fillWidget14ItemList() {
    return List.generate(1, (index) => Widget14ItemModel());
  }

  List<FoodinfolistItemModel> fillFoodinfolistItemList() {
    return [
      FoodinfolistItemModel(
          text: "Hamburguesa de pollo 01",
          name: "Todos los ingredientes incluidos \nPan regular"),
      FoodinfolistItemModel(
          text: "Hamburguesa de pollo 02",
          name: "Todos los ingredientes incluidos \nPan regular")
    ];
  }

  _onInitialize(
    InicioDeSesiNSeventynineInitialEvent event,
    Emitter<InicioDeSesiNSeventynineState> emit,
  ) async {
    emit(state.copyWith(
      topAppBarController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNSeventynineModelObj:
            state.inicioDeSesiNSeventynineModelObj?.copyWith(
      widget14ItemList: fillWidget14ItemList(),
      foodinfolistItemList: fillFoodinfolistItemList(),
    )));
  }
}
