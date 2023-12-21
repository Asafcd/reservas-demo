// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widget10_item_widget] screen.
class Widget10ItemModel extends Equatable {Widget10ItemModel({this.button, this.isSelected, }) { button = button  ?? "Barra libre";isSelected = isSelected  ?? false; }

String? button;

bool? isSelected;

Widget10ItemModel copyWith({String? button, bool? isSelected, }) { return Widget10ItemModel(
button : button ?? this.button,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [button,isSelected];
 }
