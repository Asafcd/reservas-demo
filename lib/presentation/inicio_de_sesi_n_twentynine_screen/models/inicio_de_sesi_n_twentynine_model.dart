// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:asaf_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'mesas_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_twentynine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNTwentynineModel extends Equatable {InicioDeSesiNTwentynineModel({this.dropdownItemList = const [], this.mesasItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<MesasItemModel> mesasItemList;

InicioDeSesiNTwentynineModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<MesasItemModel>? mesasItemList, }) { return InicioDeSesiNTwentynineModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
mesasItemList : mesasItemList ?? this.mesasItemList,
); } 
@override List<Object?> get props => [dropdownItemList,mesasItemList];
 }
