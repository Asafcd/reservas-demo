// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget19_item_model.dart';import '../../../core/app_export.dart';import 'foodinformationlist2_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_eighty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNEightyModel extends Equatable {InicioDeSesiNEightyModel({this.widget19ItemList = const [], this.foodinformationlist2ItemList = const [], }) {  }

List<Widget19ItemModel> widget19ItemList;

List<Foodinformationlist2ItemModel> foodinformationlist2ItemList;

InicioDeSesiNEightyModel copyWith({List<Widget19ItemModel>? widget19ItemList, List<Foodinformationlist2ItemModel>? foodinformationlist2ItemList, }) { return InicioDeSesiNEightyModel(
widget19ItemList : widget19ItemList ?? this.widget19ItemList,
foodinformationlist2ItemList : foodinformationlist2ItemList ?? this.foodinformationlist2ItemList,
); } 
@override List<Object?> get props => [widget19ItemList,foodinformationlist2ItemList];
 }
