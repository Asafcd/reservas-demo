// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'segmentedbutton_item_model.dart';import 'horarios_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_twentysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNTwentysixModel extends Equatable {InicioDeSesiNTwentysixModel({this.segmentedbuttonItemList = const [], this.horariosItemList = const [], }) {  }

List<SegmentedbuttonItemModel> segmentedbuttonItemList;

List<HorariosItemModel> horariosItemList;

InicioDeSesiNTwentysixModel copyWith({List<SegmentedbuttonItemModel>? segmentedbuttonItemList, List<HorariosItemModel>? horariosItemList, }) { return InicioDeSesiNTwentysixModel(
segmentedbuttonItemList : segmentedbuttonItemList ?? this.segmentedbuttonItemList,
horariosItemList : horariosItemList ?? this.horariosItemList,
); } 
@override List<Object?> get props => [segmentedbuttonItemList,horariosItemList];
 }
