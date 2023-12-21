// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget6_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_fiftysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNFiftysixModel extends Equatable {InicioDeSesiNFiftysixModel({this.widget6ItemList = const []}) {  }

List<Widget6ItemModel> widget6ItemList;

InicioDeSesiNFiftysixModel copyWith({List<Widget6ItemModel>? widget6ItemList}) { return InicioDeSesiNFiftysixModel(
widget6ItemList : widget6ItemList ?? this.widget6ItemList,
); } 
@override List<Object?> get props => [widget6ItemList];
 }
