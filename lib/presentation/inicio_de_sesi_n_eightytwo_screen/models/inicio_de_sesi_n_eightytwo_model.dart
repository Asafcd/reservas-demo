// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget16_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_eightytwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNEightytwoModel extends Equatable {InicioDeSesiNEightytwoModel({this.widget16ItemList = const []}) {  }

List<Widget16ItemModel> widget16ItemList;

InicioDeSesiNEightytwoModel copyWith({List<Widget16ItemModel>? widget16ItemList}) { return InicioDeSesiNEightytwoModel(
widget16ItemList : widget16ItemList ?? this.widget16ItemList,
); } 
@override List<Object?> get props => [widget16ItemList];
 }
