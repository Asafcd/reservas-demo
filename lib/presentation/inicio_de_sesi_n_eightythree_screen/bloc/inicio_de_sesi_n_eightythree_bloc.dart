import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget17_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eightythree_screen/models/inicio_de_sesi_n_eightythree_model.dart';
part 'inicio_de_sesi_n_eightythree_event.dart';
part 'inicio_de_sesi_n_eightythree_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEightythree according to the event that is dispatched to it.
class InicioDeSesiNEightythreeBloc
    extends Bloc<InicioDeSesiNEightythreeEvent, InicioDeSesiNEightythreeState> {
  InicioDeSesiNEightythreeBloc(InicioDeSesiNEightythreeState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightythreeInitialEvent>(_onInitialize);
  }

  List<Widget17ItemModel> fillWidget17ItemList() {
    return List.generate(1, (index) => Widget17ItemModel());
  }

  _onInitialize(
    InicioDeSesiNEightythreeInitialEvent event,
    Emitter<InicioDeSesiNEightythreeState> emit,
  ) async {
    emit(state.copyWith(
      productvalueController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNEightythreeModelObj:
            state.inicioDeSesiNEightythreeModelObj?.copyWith(
      widget17ItemList: fillWidget17ItemList(),
    )));
  }
}
