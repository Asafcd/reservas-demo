import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/horarios6_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eightyseven_screen/models/inicio_de_sesi_n_eightyseven_model.dart';
part 'inicio_de_sesi_n_eightyseven_event.dart';
part 'inicio_de_sesi_n_eightyseven_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEightyseven according to the event that is dispatched to it.
class InicioDeSesiNEightysevenBloc
    extends Bloc<InicioDeSesiNEightysevenEvent, InicioDeSesiNEightysevenState> {
  InicioDeSesiNEightysevenBloc(InicioDeSesiNEightysevenState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightysevenInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    InicioDeSesiNEightysevenInitialEvent event,
    Emitter<InicioDeSesiNEightysevenState> emit,
  ) async {
    emit(state.copyWith(
        inicioDeSesiNEightysevenModelObj:
            state.inicioDeSesiNEightysevenModelObj?.copyWith(
      horarios6ItemList: fillHorarios6ItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<InicioDeSesiNEightysevenState> emit,
  ) {
    List<Horarios6ItemModel> newList = List<Horarios6ItemModel>.from(
        state.inicioDeSesiNEightysevenModelObj!.horarios6ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        inicioDeSesiNEightysevenModelObj: state.inicioDeSesiNEightysevenModelObj
            ?.copyWith(horarios6ItemList: newList)));
  }

  List<Horarios6ItemModel> fillHorarios6ItemList() {
    return List.generate(17, (index) => Horarios6ItemModel());
  }
}
