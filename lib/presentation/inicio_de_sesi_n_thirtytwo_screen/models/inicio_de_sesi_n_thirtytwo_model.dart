// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:asaf_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'mesas1_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_thirtytwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNThirtytwoModel extends Equatable {InicioDeSesiNThirtytwoModel({this.dropdownItemList = const [], this.mesas1ItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<Mesas1ItemModel> mesas1ItemList;

InicioDeSesiNThirtytwoModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<Mesas1ItemModel>? mesas1ItemList, }) { return InicioDeSesiNThirtytwoModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
mesas1ItemList : mesas1ItemList ?? this.mesas1ItemList,
); } 
@override List<Object?> get props => [dropdownItemList,mesas1ItemList];
 }
