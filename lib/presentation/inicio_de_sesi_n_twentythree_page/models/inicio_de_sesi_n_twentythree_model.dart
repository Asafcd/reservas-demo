// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'baroasisslider1_item_model.dart';import 'baroasis1_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_twentythree_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNTwentythreeModel extends Equatable {InicioDeSesiNTwentythreeModel({this.baroasisslider1ItemList = const [], this.baroasis1ItemList = const [], }) {  }

List<Baroasisslider1ItemModel> baroasisslider1ItemList;

List<Baroasis1ItemModel> baroasis1ItemList;

InicioDeSesiNTwentythreeModel copyWith({List<Baroasisslider1ItemModel>? baroasisslider1ItemList, List<Baroasis1ItemModel>? baroasis1ItemList, }) { return InicioDeSesiNTwentythreeModel(
baroasisslider1ItemList : baroasisslider1ItemList ?? this.baroasisslider1ItemList,
baroasis1ItemList : baroasis1ItemList ?? this.baroasis1ItemList,
); } 
@override List<Object?> get props => [baroasisslider1ItemList,baroasis1ItemList];
 }
