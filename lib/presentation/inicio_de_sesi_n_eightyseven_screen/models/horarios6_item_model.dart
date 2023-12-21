// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [horarios6_item_widget] screen.
class Horarios6ItemModel extends Equatable {Horarios6ItemModel({this.inputChip, this.isSelected, }) { inputChip = inputChip  ?? "6:00 p.m.";isSelected = isSelected  ?? false; }

String? inputChip;

bool? isSelected;

Horarios6ItemModel copyWith({String? inputChip, bool? isSelected, }) { return Horarios6ItemModel(
inputChip : inputChip ?? this.inputChip,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [inputChip,isSelected];
 }
