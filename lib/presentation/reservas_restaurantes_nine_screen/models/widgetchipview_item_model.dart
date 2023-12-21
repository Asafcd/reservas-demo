// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widgetchipview_item_widget] screen.
class WidgetchipviewItemModel extends Equatable {WidgetchipviewItemModel({this.button, this.isSelected, }) { button = button  ?? "Barra libre";isSelected = isSelected  ?? false; }

String? button;

bool? isSelected;

WidgetchipviewItemModel copyWith({String? button, bool? isSelected, }) { return WidgetchipviewItemModel(
button : button ?? this.button,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [button,isSelected];
 }
