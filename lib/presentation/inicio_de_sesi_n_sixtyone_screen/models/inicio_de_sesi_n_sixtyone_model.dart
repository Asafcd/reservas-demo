// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:asaf_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'mesas2_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_sixtyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNSixtyoneModel extends Equatable {InicioDeSesiNSixtyoneModel({this.dropdownItemList = const [], this.mesas2ItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<Mesas2ItemModel> mesas2ItemList;

InicioDeSesiNSixtyoneModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<Mesas2ItemModel>? mesas2ItemList, }) { return InicioDeSesiNSixtyoneModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
mesas2ItemList : mesas2ItemList ?? this.mesas2ItemList,
); } 
@override List<Object?> get props => [dropdownItemList,mesas2ItemList];
 }
