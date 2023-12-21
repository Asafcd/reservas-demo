// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'activereservations_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_seventyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNSeventyoneModel extends Equatable {InicioDeSesiNSeventyoneModel({this.activereservationsItemList = const []}) {  }

List<ActivereservationsItemModel> activereservationsItemList;

InicioDeSesiNSeventyoneModel copyWith({List<ActivereservationsItemModel>? activereservationsItemList}) { return InicioDeSesiNSeventyoneModel(
activereservationsItemList : activereservationsItemList ?? this.activereservationsItemList,
); } 
@override List<Object?> get props => [activereservationsItemList];
 }
