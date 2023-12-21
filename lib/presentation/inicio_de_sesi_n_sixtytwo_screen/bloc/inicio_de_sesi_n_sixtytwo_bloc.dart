import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/nestedrows_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_sixtytwo_screen/models/inicio_de_sesi_n_sixtytwo_model.dart';
part 'inicio_de_sesi_n_sixtytwo_event.dart';
part 'inicio_de_sesi_n_sixtytwo_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSixtytwo according to the event that is dispatched to it.
class InicioDeSesiNSixtytwoBloc
    extends Bloc<InicioDeSesiNSixtytwoEvent, InicioDeSesiNSixtytwoState> {
  InicioDeSesiNSixtytwoBloc(InicioDeSesiNSixtytwoState initialState)
      : super(initialState) {
    on<InicioDeSesiNSixtytwoInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    InicioDeSesiNSixtytwoInitialEvent event,
    Emitter<InicioDeSesiNSixtytwoState> emit,
  ) async {
    emit(state.copyWith(
        inicioDeSesiNSixtytwoModelObj:
            state.inicioDeSesiNSixtytwoModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      nestedrowsItemList: fillNestedrowsItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<InicioDeSesiNSixtytwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
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

  List<NestedrowsItemModel> fillNestedrowsItemList() {
    return [
      NestedrowsItemModel(dynamicImage: ImageConstant.imgRectangle124161),
      NestedrowsItemModel(dynamicImage: ImageConstant.imgRectangle124162)
    ];
  }
}
