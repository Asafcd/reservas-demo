// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'horarios4_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_eightysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNEightysixModel extends Equatable {InicioDeSesiNEightysixModel({this.horarios4ItemList = const []}) {  }

List<Horarios4ItemModel> horarios4ItemList;

InicioDeSesiNEightysixModel copyWith({List<Horarios4ItemModel>? horarios4ItemList}) { return InicioDeSesiNEightysixModel(
horarios4ItemList : horarios4ItemList ?? this.horarios4ItemList,
); } 
@override List<Object?> get props => [horarios4ItemList];
 }
