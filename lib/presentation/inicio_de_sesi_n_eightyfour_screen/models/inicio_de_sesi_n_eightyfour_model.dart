// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget18_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_eightyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNEightyfourModel extends Equatable {InicioDeSesiNEightyfourModel({this.widget18ItemList = const []}) {  }

List<Widget18ItemModel> widget18ItemList;

InicioDeSesiNEightyfourModel copyWith({List<Widget18ItemModel>? widget18ItemList}) { return InicioDeSesiNEightyfourModel(
widget18ItemList : widget18ItemList ?? this.widget18ItemList,
); } 
@override List<Object?> get props => [widget18ItemList];
 }
