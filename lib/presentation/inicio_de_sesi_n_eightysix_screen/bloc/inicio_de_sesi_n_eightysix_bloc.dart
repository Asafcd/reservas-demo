import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/horarios4_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eightysix_screen/models/inicio_de_sesi_n_eightysix_model.dart';
part 'inicio_de_sesi_n_eightysix_event.dart';
part 'inicio_de_sesi_n_eightysix_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEightysix according to the event that is dispatched to it.
class InicioDeSesiNEightysixBloc
    extends Bloc<InicioDeSesiNEightysixEvent, InicioDeSesiNEightysixState> {
  InicioDeSesiNEightysixBloc(InicioDeSesiNEightysixState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightysixInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    InicioDeSesiNEightysixInitialEvent event,
    Emitter<InicioDeSesiNEightysixState> emit,
  ) async {
    emit(state.copyWith(
        inicioDeSesiNEightysixModelObj:
            state.inicioDeSesiNEightysixModelObj?.copyWith(
      horarios4ItemList: fillHorarios4ItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<InicioDeSesiNEightysixState> emit,
  ) {
    List<Horarios4ItemModel> newList = List<Horarios4ItemModel>.from(
        state.inicioDeSesiNEightysixModelObj!.horarios4ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        inicioDeSesiNEightysixModelObj: state.inicioDeSesiNEightysixModelObj
            ?.copyWith(horarios4ItemList: newList)));
  }

  List<Horarios4ItemModel> fillHorarios4ItemList() {
    return List.generate(17, (index) => Horarios4ItemModel());
  }
}
