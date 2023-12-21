import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/dynamiclist_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_thirty_screen/models/inicio_de_sesi_n_thirty_model.dart';
part 'inicio_de_sesi_n_thirty_event.dart';
part 'inicio_de_sesi_n_thirty_state.dart';

/// A bloc that manages the state of a InicioDeSesiNThirty according to the event that is dispatched to it.
class InicioDeSesiNThirtyBloc
    extends Bloc<InicioDeSesiNThirtyEvent, InicioDeSesiNThirtyState> {
  InicioDeSesiNThirtyBloc(InicioDeSesiNThirtyState initialState)
      : super(initialState) {
    on<InicioDeSesiNThirtyInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    InicioDeSesiNThirtyInitialEvent event,
    Emitter<InicioDeSesiNThirtyState> emit,
  ) async {
    emit(state.copyWith(
        inicioDeSesiNThirtyModelObj:
            state.inicioDeSesiNThirtyModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dynamiclistItemList: fillDynamiclistItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<InicioDeSesiNThirtyState> emit,
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

  List<DynamiclistItemModel> fillDynamiclistItemList() {
    return [
      DynamiclistItemModel(dynamicImage: ImageConstant.imgRectangle124161),
      DynamiclistItemModel(dynamicImage: ImageConstant.imgRectangle124162)
    ];
  }
}
