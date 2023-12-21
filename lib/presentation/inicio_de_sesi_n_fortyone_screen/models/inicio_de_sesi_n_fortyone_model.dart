// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'baroasis3_item_model.dart';import 'widget8_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_fortyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNFortyoneModel extends Equatable {InicioDeSesiNFortyoneModel({this.baroasis3ItemList = const [], this.widget8ItemList = const [], }) {  }

List<Baroasis3ItemModel> baroasis3ItemList;

List<Widget8ItemModel> widget8ItemList;

InicioDeSesiNFortyoneModel copyWith({List<Baroasis3ItemModel>? baroasis3ItemList, List<Widget8ItemModel>? widget8ItemList, }) { return InicioDeSesiNFortyoneModel(
baroasis3ItemList : baroasis3ItemList ?? this.baroasis3ItemList,
widget8ItemList : widget8ItemList ?? this.widget8ItemList,
); } 
@override List<Object?> get props => [baroasis3ItemList,widget8ItemList];
 }
