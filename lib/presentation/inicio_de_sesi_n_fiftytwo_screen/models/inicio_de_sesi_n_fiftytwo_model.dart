// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget2_item_model.dart';import '../../../core/app_export.dart';import 'foodinformationlist_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_fiftytwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNFiftytwoModel extends Equatable {InicioDeSesiNFiftytwoModel({this.widget2ItemList = const [], this.foodinformationlistItemList = const [], }) {  }

List<Widget2ItemModel> widget2ItemList;

List<FoodinformationlistItemModel> foodinformationlistItemList;

InicioDeSesiNFiftytwoModel copyWith({List<Widget2ItemModel>? widget2ItemList, List<FoodinformationlistItemModel>? foodinformationlistItemList, }) { return InicioDeSesiNFiftytwoModel(
widget2ItemList : widget2ItemList ?? this.widget2ItemList,
foodinformationlistItemList : foodinformationlistItemList ?? this.foodinformationlistItemList,
); } 
@override List<Object?> get props => [widget2ItemList,foodinformationlistItemList];
 }
