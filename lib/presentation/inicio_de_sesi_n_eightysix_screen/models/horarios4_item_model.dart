// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [horarios4_item_widget] screen.
class Horarios4ItemModel extends Equatable {Horarios4ItemModel({this.inputChip, this.isSelected, }) { inputChip = inputChip  ?? "6:00 p.m.";isSelected = isSelected  ?? false; }

String? inputChip;

bool? isSelected;

Horarios4ItemModel copyWith({String? inputChip, bool? isSelected, }) { return Horarios4ItemModel(
inputChip : inputChip ?? this.inputChip,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [inputChip,isSelected];
 }
