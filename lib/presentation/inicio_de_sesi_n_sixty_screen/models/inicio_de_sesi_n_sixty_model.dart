// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:asaf_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'mesas3_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_sixty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNSixtyModel extends Equatable {InicioDeSesiNSixtyModel({this.dropdownItemList = const [], this.mesas3ItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<Mesas3ItemModel> mesas3ItemList;

InicioDeSesiNSixtyModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<Mesas3ItemModel>? mesas3ItemList, }) { return InicioDeSesiNSixtyModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
mesas3ItemList : mesas3ItemList ?? this.mesas3ItemList,
); } 
@override List<Object?> get props => [dropdownItemList,mesas3ItemList];
 }
