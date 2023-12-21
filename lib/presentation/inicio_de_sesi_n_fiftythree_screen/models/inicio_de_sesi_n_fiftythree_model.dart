// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget3_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_fiftythree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNFiftythreeModel extends Equatable {InicioDeSesiNFiftythreeModel({this.widget3ItemList = const []}) {  }

List<Widget3ItemModel> widget3ItemList;

InicioDeSesiNFiftythreeModel copyWith({List<Widget3ItemModel>? widget3ItemList}) { return InicioDeSesiNFiftythreeModel(
widget3ItemList : widget3ItemList ?? this.widget3ItemList,
); } 
@override List<Object?> get props => [widget3ItemList];
 }
