// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'reservaactiva_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_fortynine_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNFortynineModel extends Equatable {InicioDeSesiNFortynineModel({this.reservaactivaItemList = const []}) {  }

List<ReservaactivaItemModel> reservaactivaItemList;

InicioDeSesiNFortynineModel copyWith({List<ReservaactivaItemModel>? reservaactivaItemList}) { return InicioDeSesiNFortynineModel(
reservaactivaItemList : reservaactivaItemList ?? this.reservaactivaItemList,
); } 
@override List<Object?> get props => [reservaactivaItemList];
 }
