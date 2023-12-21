// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget14_item_model.dart';import '../../../core/app_export.dart';import 'foodinfolist_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_seventynine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNSeventynineModel extends Equatable {InicioDeSesiNSeventynineModel({this.widget14ItemList = const [], this.foodinfolistItemList = const [], }) {  }

List<Widget14ItemModel> widget14ItemList;

List<FoodinfolistItemModel> foodinfolistItemList;

InicioDeSesiNSeventynineModel copyWith({List<Widget14ItemModel>? widget14ItemList, List<FoodinfolistItemModel>? foodinfolistItemList, }) { return InicioDeSesiNSeventynineModel(
widget14ItemList : widget14ItemList ?? this.widget14ItemList,
foodinfolistItemList : foodinfolistItemList ?? this.foodinfolistItemList,
); } 
@override List<Object?> get props => [widget14ItemList,foodinfolistItemList];
 }
