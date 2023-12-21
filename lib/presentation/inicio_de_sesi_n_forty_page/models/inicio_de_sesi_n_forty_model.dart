// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'reservaactivalist_item_model.dart';import 'reservaactivalist1_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_forty_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNFortyModel extends Equatable {InicioDeSesiNFortyModel({this.reservaactivalistItemList = const [], this.reservaactivalist1ItemList = const [], }) {  }

List<ReservaactivalistItemModel> reservaactivalistItemList;

List<Reservaactivalist1ItemModel> reservaactivalist1ItemList;

InicioDeSesiNFortyModel copyWith({List<ReservaactivalistItemModel>? reservaactivalistItemList, List<Reservaactivalist1ItemModel>? reservaactivalist1ItemList, }) { return InicioDeSesiNFortyModel(
reservaactivalistItemList : reservaactivalistItemList ?? this.reservaactivalistItemList,
reservaactivalist1ItemList : reservaactivalist1ItemList ?? this.reservaactivalist1ItemList,
); } 
@override List<Object?> get props => [reservaactivalistItemList,reservaactivalist1ItemList];
 }
