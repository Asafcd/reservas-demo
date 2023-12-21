// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'reservaactivasection_item_model.dart';import 'baroasiscomponent1_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_ninetytwo_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNNinetytwoModel extends Equatable {InicioDeSesiNNinetytwoModel({this.reservaactivasectionItemList = const [], this.baroasiscomponent1ItemList = const [], }) {  }

List<ReservaactivasectionItemModel> reservaactivasectionItemList;

List<Baroasiscomponent1ItemModel> baroasiscomponent1ItemList;

InicioDeSesiNNinetytwoModel copyWith({List<ReservaactivasectionItemModel>? reservaactivasectionItemList, List<Baroasiscomponent1ItemModel>? baroasiscomponent1ItemList, }) { return InicioDeSesiNNinetytwoModel(
reservaactivasectionItemList : reservaactivasectionItemList ?? this.reservaactivasectionItemList,
baroasiscomponent1ItemList : baroasiscomponent1ItemList ?? this.baroasiscomponent1ItemList,
); } 
@override List<Object?> get props => [reservaactivasectionItemList,baroasiscomponent1ItemList];
 }
