// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'baroasisslider2_item_model.dart';import 'baroasis5_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_seventyfive_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNSeventyfiveModel extends Equatable {InicioDeSesiNSeventyfiveModel({this.baroasisslider2ItemList = const [], this.baroasis5ItemList = const [], }) {  }

List<Baroasisslider2ItemModel> baroasisslider2ItemList;

List<Baroasis5ItemModel> baroasis5ItemList;

InicioDeSesiNSeventyfiveModel copyWith({List<Baroasisslider2ItemModel>? baroasisslider2ItemList, List<Baroasis5ItemModel>? baroasis5ItemList, }) { return InicioDeSesiNSeventyfiveModel(
baroasisslider2ItemList : baroasisslider2ItemList ?? this.baroasisslider2ItemList,
baroasis5ItemList : baroasis5ItemList ?? this.baroasis5ItemList,
); } 
@override List<Object?> get props => [baroasisslider2ItemList,baroasis5ItemList];
 }
