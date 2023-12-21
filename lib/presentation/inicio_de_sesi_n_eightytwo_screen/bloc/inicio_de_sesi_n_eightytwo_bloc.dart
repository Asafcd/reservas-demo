import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget16_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eightytwo_screen/models/inicio_de_sesi_n_eightytwo_model.dart';
part 'inicio_de_sesi_n_eightytwo_event.dart';
part 'inicio_de_sesi_n_eightytwo_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEightytwo according to the event that is dispatched to it.
class InicioDeSesiNEightytwoBloc
    extends Bloc<InicioDeSesiNEightytwoEvent, InicioDeSesiNEightytwoState> {
  InicioDeSesiNEightytwoBloc(InicioDeSesiNEightytwoState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightytwoInitialEvent>(_onInitialize);
  }

  List<Widget16ItemModel> fillWidget16ItemList() {
    return List.generate(1, (index) => Widget16ItemModel());
  }

  _onInitialize(
    InicioDeSesiNEightytwoInitialEvent event,
    Emitter<InicioDeSesiNEightytwoState> emit,
  ) async {
    emit(state.copyWith(
      productvalueController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNEightytwoModelObj:
            state.inicioDeSesiNEightytwoModelObj?.copyWith(
      widget16ItemList: fillWidget16ItemList(),
    )));
  }
}
