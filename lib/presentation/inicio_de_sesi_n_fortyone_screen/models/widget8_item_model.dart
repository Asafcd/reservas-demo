// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widget8_item_widget] screen.
class Widget8ItemModel extends Equatable {Widget8ItemModel({this.button, this.isSelected, }) { button = button  ?? "Barra libre";isSelected = isSelected  ?? false; }

String? button;

bool? isSelected;

Widget8ItemModel copyWith({String? button, bool? isSelected, }) { return Widget8ItemModel(
button : button ?? this.button,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [button,isSelected];
 }
