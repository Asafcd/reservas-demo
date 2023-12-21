import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/dynamicview_item_model.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_thirtythree_screen/models/inicio_de_sesi_n_thirtythree_model.dart';part 'inicio_de_sesi_n_thirtythree_event.dart';part 'inicio_de_sesi_n_thirtythree_state.dart';/// A bloc that manages the state of a InicioDeSesiNThirtythree according to the event that is dispatched to it.
class InicioDeSesiNThirtythreeBloc extends Bloc<InicioDeSesiNThirtythreeEvent, InicioDeSesiNThirtythreeState> {InicioDeSesiNThirtythreeBloc(InicioDeSesiNThirtythreeState initialState) : super(initialState) { on<InicioDeSesiNThirtythreeInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_onInitialize(InicioDeSesiNThirtythreeInitialEvent event, Emitter<InicioDeSesiNThirtythreeState> emit, ) async  { emit(state.copyWith(inicioDeSesiNThirtythreeModelObj: state.inicioDeSesiNThirtythreeModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), dynamicviewItemList: fillDynamicviewItemList()))); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<InicioDeSesiNThirtythreeState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<DynamicviewItemModel> fillDynamicviewItemList() { return [DynamicviewItemModel(imageProp: ImageConstant.imgRectangle12416, imageProp1: ImageConstant.imgIconsCheckSmall), DynamicviewItemModel(imageProp: ImageConstant.imgRectangle1241656x56), DynamicviewItemModel(imageProp: ImageConstant.imgRectangle124161), DynamicviewItemModel(imageProp: ImageConstant.imgRectangle124162)]; } 
 }
