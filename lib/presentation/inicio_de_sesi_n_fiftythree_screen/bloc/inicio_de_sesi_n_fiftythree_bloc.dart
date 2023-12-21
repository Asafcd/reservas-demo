import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget3_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftythree_screen/models/inicio_de_sesi_n_fiftythree_model.dart';
part 'inicio_de_sesi_n_fiftythree_event.dart';
part 'inicio_de_sesi_n_fiftythree_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFiftythree according to the event that is dispatched to it.
class InicioDeSesiNFiftythreeBloc
    extends Bloc<InicioDeSesiNFiftythreeEvent, InicioDeSesiNFiftythreeState> {
  InicioDeSesiNFiftythreeBloc(InicioDeSesiNFiftythreeState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiftythreeInitialEvent>(_onInitialize);
  }

  List<Widget3ItemModel> fillWidget3ItemList() {
    return List.generate(1, (index) => Widget3ItemModel());
  }

  _onInitialize(
    InicioDeSesiNFiftythreeInitialEvent event,
    Emitter<InicioDeSesiNFiftythreeState> emit,
  ) async {
    emit(state.copyWith(
      productvalueController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNFiftythreeModelObj:
            state.inicioDeSesiNFiftythreeModelObj?.copyWith(
      widget3ItemList: fillWidget3ItemList(),
    )));
  }
}
