// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'baroasis4_item_model.dart';import 'widget10_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_fortyeight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNFortyeightModel extends Equatable {InicioDeSesiNFortyeightModel({this.baroasis4ItemList = const [], this.widget10ItemList = const [], }) {  }

List<Baroasis4ItemModel> baroasis4ItemList;

List<Widget10ItemModel> widget10ItemList;

InicioDeSesiNFortyeightModel copyWith({List<Baroasis4ItemModel>? baroasis4ItemList, List<Widget10ItemModel>? widget10ItemList, }) { return InicioDeSesiNFortyeightModel(
baroasis4ItemList : baroasis4ItemList ?? this.baroasis4ItemList,
widget10ItemList : widget10ItemList ?? this.widget10ItemList,
); } 
@override List<Object?> get props => [baroasis4ItemList,widget10ItemList];
 }
