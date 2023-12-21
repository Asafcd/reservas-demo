// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'segmentedbutton2_item_model.dart';import 'horarios2_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_twentyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNTwentysevenModel extends Equatable {InicioDeSesiNTwentysevenModel({this.segmentedbutton2ItemList = const [], this.horarios2ItemList = const [], }) {  }

List<Segmentedbutton2ItemModel> segmentedbutton2ItemList;

List<Horarios2ItemModel> horarios2ItemList;

InicioDeSesiNTwentysevenModel copyWith({List<Segmentedbutton2ItemModel>? segmentedbutton2ItemList, List<Horarios2ItemModel>? horarios2ItemList, }) { return InicioDeSesiNTwentysevenModel(
segmentedbutton2ItemList : segmentedbutton2ItemList ?? this.segmentedbutton2ItemList,
horarios2ItemList : horarios2ItemList ?? this.horarios2ItemList,
); } 
@override List<Object?> get props => [segmentedbutton2ItemList,horarios2ItemList];
 }
