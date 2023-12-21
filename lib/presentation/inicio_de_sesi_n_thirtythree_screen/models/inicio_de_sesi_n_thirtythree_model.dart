// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:asaf_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'dynamicview_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_thirtythree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNThirtythreeModel extends Equatable {InicioDeSesiNThirtythreeModel({this.dropdownItemList = const [], this.dynamicviewItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<DynamicviewItemModel> dynamicviewItemList;

InicioDeSesiNThirtythreeModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<DynamicviewItemModel>? dynamicviewItemList, }) { return InicioDeSesiNThirtythreeModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dynamicviewItemList : dynamicviewItemList ?? this.dynamicviewItemList,
); } 
@override List<Object?> get props => [dropdownItemList,dynamicviewItemList];
 }
