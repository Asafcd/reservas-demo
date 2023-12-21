// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'reservaactivalist2_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_sixtynine_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNSixtynineModel extends Equatable {InicioDeSesiNSixtynineModel({this.reservaactivalist2ItemList = const []}) {  }

List<Reservaactivalist2ItemModel> reservaactivalist2ItemList;

InicioDeSesiNSixtynineModel copyWith({List<Reservaactivalist2ItemModel>? reservaactivalist2ItemList}) { return InicioDeSesiNSixtynineModel(
reservaactivalist2ItemList : reservaactivalist2ItemList ?? this.reservaactivalist2ItemList,
); } 
@override List<Object?> get props => [reservaactivalist2ItemList];
 }
