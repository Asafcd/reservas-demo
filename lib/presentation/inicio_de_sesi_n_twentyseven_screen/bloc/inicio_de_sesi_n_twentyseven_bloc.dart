import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/segmentedbutton2_item_model.dart';
import '../models/horarios2_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentyseven_screen/models/inicio_de_sesi_n_twentyseven_model.dart';
part 'inicio_de_sesi_n_twentyseven_event.dart';
part 'inicio_de_sesi_n_twentyseven_state.dart';

/// A bloc that manages the state of a InicioDeSesiNTwentyseven according to the event that is dispatched to it.
class InicioDeSesiNTwentysevenBloc
    extends Bloc<InicioDeSesiNTwentysevenEvent, InicioDeSesiNTwentysevenState> {
  InicioDeSesiNTwentysevenBloc(InicioDeSesiNTwentysevenState initialState)
      : super(initialState) {
    on<InicioDeSesiNTwentysevenInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<UpdateChipView1Event>(_updateChipView1);
  }

  _onInitialize(
    InicioDeSesiNTwentysevenInitialEvent event,
    Emitter<InicioDeSesiNTwentysevenState> emit,
  ) async {
    emit(state.copyWith(
        inicioDeSesiNTwentysevenModelObj:
            state.inicioDeSesiNTwentysevenModelObj?.copyWith(
      segmentedbutton2ItemList: fillSegmentedbutton2ItemList(),
      horarios2ItemList: fillHorarios2ItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<InicioDeSesiNTwentysevenState> emit,
  ) {
    List<Segmentedbutton2ItemModel> newList =
        List<Segmentedbutton2ItemModel>.from(
            state.inicioDeSesiNTwentysevenModelObj!.segmentedbutton2ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        inicioDeSesiNTwentysevenModelObj: state.inicioDeSesiNTwentysevenModelObj
            ?.copyWith(segmentedbutton2ItemList: newList)));
  }

  _updateChipView1(
    UpdateChipView1Event event,
    Emitter<InicioDeSesiNTwentysevenState> emit,
  ) {
    List<Horarios2ItemModel> newList = List<Horarios2ItemModel>.from(
        state.inicioDeSesiNTwentysevenModelObj!.horarios2ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        inicioDeSesiNTwentysevenModelObj: state.inicioDeSesiNTwentysevenModelObj
            ?.copyWith(horarios2ItemList: newList)));
  }

  List<Segmentedbutton2ItemModel> fillSegmentedbutton2ItemList() {
    return List.generate(3, (index) => Segmentedbutton2ItemModel());
  }

  List<Horarios2ItemModel> fillHorarios2ItemList() {
    return List.generate(17, (index) => Horarios2ItemModel());
  }
}
