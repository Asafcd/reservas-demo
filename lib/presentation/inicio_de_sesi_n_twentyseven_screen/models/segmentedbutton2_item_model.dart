// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [segmentedbutton2_item_widget] screen.
class Segmentedbutton2ItemModel extends Equatable {Segmentedbutton2ItemModel({this.container, this.isSelected, }) { container = container  ?? "1 hora";isSelected = isSelected  ?? false; }

String? container;

bool? isSelected;

Segmentedbutton2ItemModel copyWith({String? container, bool? isSelected, }) { return Segmentedbutton2ItemModel(
container : container ?? this.container,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [container,isSelected];
 }
