// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widget_item_widget] screen.
class WidgetItemModel extends Equatable {WidgetItemModel({this.button, this.isSelected, }) { button = button  ?? "Barra libre";isSelected = isSelected  ?? false; }

String? button;

bool? isSelected;

WidgetItemModel copyWith({String? button, bool? isSelected, }) { return WidgetItemModel(
button : button ?? this.button,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [button,isSelected];
 }
