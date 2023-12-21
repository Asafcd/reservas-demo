// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget5_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_fiftyfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNFiftyfiveModel extends Equatable {InicioDeSesiNFiftyfiveModel({this.widget5ItemList = const []}) {  }

List<Widget5ItemModel> widget5ItemList;

InicioDeSesiNFiftyfiveModel copyWith({List<Widget5ItemModel>? widget5ItemList}) { return InicioDeSesiNFiftyfiveModel(
widget5ItemList : widget5ItemList ?? this.widget5ItemList,
); } 
@override List<Object?> get props => [widget5ItemList];
 }
