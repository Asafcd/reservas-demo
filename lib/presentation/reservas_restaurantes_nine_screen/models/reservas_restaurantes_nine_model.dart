// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'userslider_item_model.dart';import 'package:asaf_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import 'widgetchipview_item_model.dart';/// This class defines the variables used in the [reservas_restaurantes_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReservasRestaurantesNineModel extends Equatable {ReservasRestaurantesNineModel({this.usersliderItemList = const [], this.dropdownItemList = const [], this.widgetchipviewItemList = const [], }) {  }

List<UsersliderItemModel> usersliderItemList;

List<SelectionPopupModel> dropdownItemList;

List<WidgetchipviewItemModel> widgetchipviewItemList;

ReservasRestaurantesNineModel copyWith({List<UsersliderItemModel>? usersliderItemList, List<SelectionPopupModel>? dropdownItemList, List<WidgetchipviewItemModel>? widgetchipviewItemList, }) { return ReservasRestaurantesNineModel(
usersliderItemList : usersliderItemList ?? this.usersliderItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
widgetchipviewItemList : widgetchipviewItemList ?? this.widgetchipviewItemList,
); } 
@override List<Object?> get props => [usersliderItemList,dropdownItemList,widgetchipviewItemList];
 }
