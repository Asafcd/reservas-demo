// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget15_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_eightyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNEightyoneModel extends Equatable {InicioDeSesiNEightyoneModel({this.widget15ItemList = const []}) {  }

List<Widget15ItemModel> widget15ItemList;

InicioDeSesiNEightyoneModel copyWith({List<Widget15ItemModel>? widget15ItemList}) { return InicioDeSesiNEightyoneModel(
widget15ItemList : widget15ItemList ?? this.widget15ItemList,
); } 
@override List<Object?> get props => [widget15ItemList];
 }
