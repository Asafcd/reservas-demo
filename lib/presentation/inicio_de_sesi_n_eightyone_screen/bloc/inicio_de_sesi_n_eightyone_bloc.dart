import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget15_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eightyone_screen/models/inicio_de_sesi_n_eightyone_model.dart';
part 'inicio_de_sesi_n_eightyone_event.dart';
part 'inicio_de_sesi_n_eightyone_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEightyone according to the event that is dispatched to it.
class InicioDeSesiNEightyoneBloc
    extends Bloc<InicioDeSesiNEightyoneEvent, InicioDeSesiNEightyoneState> {
  InicioDeSesiNEightyoneBloc(InicioDeSesiNEightyoneState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightyoneInitialEvent>(_onInitialize);
  }

  List<Widget15ItemModel> fillWidget15ItemList() {
    return List.generate(1, (index) => Widget15ItemModel());
  }

  _onInitialize(
    InicioDeSesiNEightyoneInitialEvent event,
    Emitter<InicioDeSesiNEightyoneState> emit,
  ) async {
    emit(state.copyWith(
      productvalueController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNEightyoneModelObj:
            state.inicioDeSesiNEightyoneModelObj?.copyWith(
      widget15ItemList: fillWidget15ItemList(),
    )));
  }
}
