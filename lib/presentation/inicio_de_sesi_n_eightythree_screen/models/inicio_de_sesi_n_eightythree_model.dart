// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget17_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_eightythree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNEightythreeModel extends Equatable {InicioDeSesiNEightythreeModel({this.widget17ItemList = const []}) {  }

List<Widget17ItemModel> widget17ItemList;

InicioDeSesiNEightythreeModel copyWith({List<Widget17ItemModel>? widget17ItemList}) { return InicioDeSesiNEightythreeModel(
widget17ItemList : widget17ItemList ?? this.widget17ItemList,
); } 
@override List<Object?> get props => [widget17ItemList];
 }
