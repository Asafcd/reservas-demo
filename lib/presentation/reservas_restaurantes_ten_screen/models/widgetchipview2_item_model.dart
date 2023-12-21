// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widgetchipview2_item_widget] screen.
class Widgetchipview2ItemModel extends Equatable {Widgetchipview2ItemModel({this.button, this.isSelected, }) { button = button  ?? "Barra libre";isSelected = isSelected  ?? false; }

String? button;

bool? isSelected;

Widgetchipview2ItemModel copyWith({String? button, bool? isSelected, }) { return Widgetchipview2ItemModel(
button : button ?? this.button,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [button,isSelected];
 }
