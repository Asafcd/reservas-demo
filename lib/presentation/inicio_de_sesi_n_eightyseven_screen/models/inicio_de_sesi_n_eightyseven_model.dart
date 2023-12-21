// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'horarios6_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_eightyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNEightysevenModel extends Equatable {InicioDeSesiNEightysevenModel({this.horarios6ItemList = const []}) {  }

List<Horarios6ItemModel> horarios6ItemList;

InicioDeSesiNEightysevenModel copyWith({List<Horarios6ItemModel>? horarios6ItemList}) { return InicioDeSesiNEightysevenModel(
horarios6ItemList : horarios6ItemList ?? this.horarios6ItemList,
); } 
@override List<Object?> get props => [horarios6ItemList];
 }
