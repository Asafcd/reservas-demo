// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'baroasisslider_item_model.dart';import 'baroasis_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_nineteen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNNineteenModel extends Equatable {InicioDeSesiNNineteenModel({this.baroasissliderItemList = const [], this.baroasisItemList = const [], }) {  }

List<BaroasissliderItemModel> baroasissliderItemList;

List<BaroasisItemModel> baroasisItemList;

InicioDeSesiNNineteenModel copyWith({List<BaroasissliderItemModel>? baroasissliderItemList, List<BaroasisItemModel>? baroasisItemList, }) { return InicioDeSesiNNineteenModel(
baroasissliderItemList : baroasissliderItemList ?? this.baroasissliderItemList,
baroasisItemList : baroasisItemList ?? this.baroasisItemList,
); } 
@override List<Object?> get props => [baroasissliderItemList,baroasisItemList];
 }
