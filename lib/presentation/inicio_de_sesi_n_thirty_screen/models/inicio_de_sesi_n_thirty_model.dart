// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:asaf_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'dynamiclist_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_thirty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNThirtyModel extends Equatable {InicioDeSesiNThirtyModel({this.dropdownItemList = const [], this.dynamiclistItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<DynamiclistItemModel> dynamiclistItemList;

InicioDeSesiNThirtyModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<DynamiclistItemModel>? dynamiclistItemList, }) { return InicioDeSesiNThirtyModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dynamiclistItemList : dynamiclistItemList ?? this.dynamiclistItemList,
); } 
@override List<Object?> get props => [dropdownItemList,dynamiclistItemList];
 }
