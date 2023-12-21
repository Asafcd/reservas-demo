// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget7_item_model.dart';import '../../../core/app_export.dart';import 'foodinformationlist1_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_fiftyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNFiftysevenModel extends Equatable {InicioDeSesiNFiftysevenModel({this.widget7ItemList = const [], this.foodinformationlist1ItemList = const [], }) {  }

List<Widget7ItemModel> widget7ItemList;

List<Foodinformationlist1ItemModel> foodinformationlist1ItemList;

InicioDeSesiNFiftysevenModel copyWith({List<Widget7ItemModel>? widget7ItemList, List<Foodinformationlist1ItemModel>? foodinformationlist1ItemList, }) { return InicioDeSesiNFiftysevenModel(
widget7ItemList : widget7ItemList ?? this.widget7ItemList,
foodinformationlist1ItemList : foodinformationlist1ItemList ?? this.foodinformationlist1ItemList,
); } 
@override List<Object?> get props => [widget7ItemList,foodinformationlist1ItemList];
 }
