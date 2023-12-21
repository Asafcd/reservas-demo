// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget4_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_fiftyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNFiftyfourModel extends Equatable {InicioDeSesiNFiftyfourModel({this.widget4ItemList = const []}) {  }

List<Widget4ItemModel> widget4ItemList;

InicioDeSesiNFiftyfourModel copyWith({List<Widget4ItemModel>? widget4ItemList}) { return InicioDeSesiNFiftyfourModel(
widget4ItemList : widget4ItemList ?? this.widget4ItemList,
); } 
@override List<Object?> get props => [widget4ItemList];
 }
