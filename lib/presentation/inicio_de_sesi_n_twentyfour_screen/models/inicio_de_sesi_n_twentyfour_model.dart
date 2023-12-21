// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'baroasis2_item_model.dart';import 'widget_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_twentyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNTwentyfourModel extends Equatable {InicioDeSesiNTwentyfourModel({this.baroasis2ItemList = const [], this.widgetItemList = const [], }) {  }

List<Baroasis2ItemModel> baroasis2ItemList;

List<WidgetItemModel> widgetItemList;

InicioDeSesiNTwentyfourModel copyWith({List<Baroasis2ItemModel>? baroasis2ItemList, List<WidgetItemModel>? widgetItemList, }) { return InicioDeSesiNTwentyfourModel(
baroasis2ItemList : baroasis2ItemList ?? this.baroasis2ItemList,
widgetItemList : widgetItemList ?? this.widgetItemList,
); } 
@override List<Object?> get props => [baroasis2ItemList,widgetItemList];
 }
