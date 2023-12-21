// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'baroasis6_item_model.dart';import 'widget12_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_seventysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNSeventysixModel extends Equatable {InicioDeSesiNSeventysixModel({this.baroasis6ItemList = const [], this.widget12ItemList = const [], }) {  }

List<Baroasis6ItemModel> baroasis6ItemList;

List<Widget12ItemModel> widget12ItemList;

InicioDeSesiNSeventysixModel copyWith({List<Baroasis6ItemModel>? baroasis6ItemList, List<Widget12ItemModel>? widget12ItemList, }) { return InicioDeSesiNSeventysixModel(
baroasis6ItemList : baroasis6ItemList ?? this.baroasis6ItemList,
widget12ItemList : widget12ItemList ?? this.widget12ItemList,
); } 
@override List<Object?> get props => [baroasis6ItemList,widget12ItemList];
 }
