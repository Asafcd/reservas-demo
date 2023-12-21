// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'userslider1_item_model.dart';import 'package:asaf_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import 'widgetchipview2_item_model.dart';/// This class defines the variables used in the [reservas_restaurantes_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReservasRestaurantesTenModel extends Equatable {ReservasRestaurantesTenModel({this.userslider1ItemList = const [], this.dropdownItemList = const [], this.widgetchipview2ItemList = const [], }) {  }

List<Userslider1ItemModel> userslider1ItemList;

List<SelectionPopupModel> dropdownItemList;

List<Widgetchipview2ItemModel> widgetchipview2ItemList;

ReservasRestaurantesTenModel copyWith({List<Userslider1ItemModel>? userslider1ItemList, List<SelectionPopupModel>? dropdownItemList, List<Widgetchipview2ItemModel>? widgetchipview2ItemList, }) { return ReservasRestaurantesTenModel(
userslider1ItemList : userslider1ItemList ?? this.userslider1ItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
widgetchipview2ItemList : widgetchipview2ItemList ?? this.widgetchipview2ItemList,
); } 
@override List<Object?> get props => [userslider1ItemList,dropdownItemList,widgetchipview2ItemList];
 }
