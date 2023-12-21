// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [horarios_item_widget] screen.
class HorariosItemModel extends Equatable {HorariosItemModel({this.inputChip, this.isSelected, }) { inputChip = inputChip  ?? "6:00 p.m.";isSelected = isSelected  ?? false; }

String? inputChip;

bool? isSelected;

HorariosItemModel copyWith({String? inputChip, bool? isSelected, }) { return HorariosItemModel(
inputChip : inputChip ?? this.inputChip,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [inputChip,isSelected];
 }
