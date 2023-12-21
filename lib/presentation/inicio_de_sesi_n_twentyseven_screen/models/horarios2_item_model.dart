// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [horarios2_item_widget] screen.
class Horarios2ItemModel extends Equatable {Horarios2ItemModel({this.inputChip, this.isSelected, }) { inputChip = inputChip  ?? "6:00 p.m.";isSelected = isSelected  ?? false; }

String? inputChip;

bool? isSelected;

Horarios2ItemModel copyWith({String? inputChip, bool? isSelected, }) { return Horarios2ItemModel(
inputChip : inputChip ?? this.inputChip,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [inputChip,isSelected];
 }
