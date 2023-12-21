// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:asaf_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'listamodal_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_sixtythree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNSixtythreeModel extends Equatable {InicioDeSesiNSixtythreeModel({this.dropdownItemList = const [], this.listamodalItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<ListamodalItemModel> listamodalItemList;

InicioDeSesiNSixtythreeModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<ListamodalItemModel>? listamodalItemList, }) { return InicioDeSesiNSixtythreeModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
listamodalItemList : listamodalItemList ?? this.listamodalItemList,
); } 
@override List<Object?> get props => [dropdownItemList,listamodalItemList];
 }
