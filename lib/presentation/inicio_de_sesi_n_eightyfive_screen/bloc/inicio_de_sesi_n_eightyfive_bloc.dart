import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eightyfive_screen/models/inicio_de_sesi_n_eightyfive_model.dart';
part 'inicio_de_sesi_n_eightyfive_event.dart';
part 'inicio_de_sesi_n_eightyfive_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEightyfive according to the event that is dispatched to it.
class InicioDeSesiNEightyfiveBloc
    extends Bloc<InicioDeSesiNEightyfiveEvent, InicioDeSesiNEightyfiveState> {
  InicioDeSesiNEightyfiveBloc(InicioDeSesiNEightyfiveState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightyfiveInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<InicioDeSesiNEightyfiveState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<InicioDeSesiNEightyfiveState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    InicioDeSesiNEightyfiveInitialEvent event,
    Emitter<InicioDeSesiNEightyfiveState> emit,
  ) async {
    emit(state.copyWith(
      rangeSelectionMode: RangeSelectionMode.toggledOn,
    ));
    emit(state.copyWith(
        inicioDeSesiNEightyfiveModelObj:
            state.inicioDeSesiNEightyfiveModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
    )));
  }
}
