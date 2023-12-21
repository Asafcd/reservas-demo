import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget5_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftyfive_screen/models/inicio_de_sesi_n_fiftyfive_model.dart';
part 'inicio_de_sesi_n_fiftyfive_event.dart';
part 'inicio_de_sesi_n_fiftyfive_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFiftyfive according to the event that is dispatched to it.
class InicioDeSesiNFiftyfiveBloc
    extends Bloc<InicioDeSesiNFiftyfiveEvent, InicioDeSesiNFiftyfiveState> {
  InicioDeSesiNFiftyfiveBloc(InicioDeSesiNFiftyfiveState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiftyfiveInitialEvent>(_onInitialize);
  }

  List<Widget5ItemModel> fillWidget5ItemList() {
    return List.generate(1, (index) => Widget5ItemModel());
  }

  _onInitialize(
    InicioDeSesiNFiftyfiveInitialEvent event,
    Emitter<InicioDeSesiNFiftyfiveState> emit,
  ) async {
    emit(state.copyWith(
      productvalueController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNFiftyfiveModelObj:
            state.inicioDeSesiNFiftyfiveModelObj?.copyWith(
      widget5ItemList: fillWidget5ItemList(),
    )));
  }
}
