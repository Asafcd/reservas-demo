import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/segmentedbutton_item_model.dart';
import '../models/horarios_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentysix_screen/models/inicio_de_sesi_n_twentysix_model.dart';
part 'inicio_de_sesi_n_twentysix_event.dart';
part 'inicio_de_sesi_n_twentysix_state.dart';

/// A bloc that manages the state of a InicioDeSesiNTwentysix according to the event that is dispatched to it.
class InicioDeSesiNTwentysixBloc
    extends Bloc<InicioDeSesiNTwentysixEvent, InicioDeSesiNTwentysixState> {
  InicioDeSesiNTwentysixBloc(InicioDeSesiNTwentysixState initialState)
      : super(initialState) {
    on<InicioDeSesiNTwentysixInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<UpdateChipView1Event>(_updateChipView1);
  }

  _onInitialize(
    InicioDeSesiNTwentysixInitialEvent event,
    Emitter<InicioDeSesiNTwentysixState> emit,
  ) async {
    emit(state.copyWith(
        inicioDeSesiNTwentysixModelObj:
            state.inicioDeSesiNTwentysixModelObj?.copyWith(
      segmentedbuttonItemList: fillSegmentedbuttonItemList(),
      horariosItemList: fillHorariosItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<InicioDeSesiNTwentysixState> emit,
  ) {
    List<SegmentedbuttonItemModel> newList =
        List<SegmentedbuttonItemModel>.from(
            state.inicioDeSesiNTwentysixModelObj!.segmentedbuttonItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        inicioDeSesiNTwentysixModelObj: state.inicioDeSesiNTwentysixModelObj
            ?.copyWith(segmentedbuttonItemList: newList)));
  }

  _updateChipView1(
    UpdateChipView1Event event,
    Emitter<InicioDeSesiNTwentysixState> emit,
  ) {
    List<HorariosItemModel> newList = List<HorariosItemModel>.from(
        state.inicioDeSesiNTwentysixModelObj!.horariosItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        inicioDeSesiNTwentysixModelObj: state.inicioDeSesiNTwentysixModelObj
            ?.copyWith(horariosItemList: newList)));
  }

  List<SegmentedbuttonItemModel> fillSegmentedbuttonItemList() {
    return List.generate(3, (index) => SegmentedbuttonItemModel());
  }

  List<HorariosItemModel> fillHorariosItemList() {
    return List.generate(17, (index) => HorariosItemModel());
  }
}
