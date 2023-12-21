// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [segmentedbutton_item_widget] screen.
class SegmentedbuttonItemModel extends Equatable {SegmentedbuttonItemModel({this.container, this.isSelected, }) { container = container  ?? "1 hora";isSelected = isSelected  ?? false; }

String? container;

bool? isSelected;

SegmentedbuttonItemModel copyWith({String? container, bool? isSelected, }) { return SegmentedbuttonItemModel(
container : container ?? this.container,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [container,isSelected];
 }
