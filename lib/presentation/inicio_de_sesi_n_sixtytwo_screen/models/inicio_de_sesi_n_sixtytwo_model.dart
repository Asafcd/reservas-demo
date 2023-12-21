// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:asaf_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'nestedrows_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_sixtytwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNSixtytwoModel extends Equatable {InicioDeSesiNSixtytwoModel({this.dropdownItemList = const [], this.nestedrowsItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<NestedrowsItemModel> nestedrowsItemList;

InicioDeSesiNSixtytwoModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<NestedrowsItemModel>? nestedrowsItemList, }) { return InicioDeSesiNSixtytwoModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
nestedrowsItemList : nestedrowsItemList ?? this.nestedrowsItemList,
); } 
@override List<Object?> get props => [dropdownItemList,nestedrowsItemList];
 }
