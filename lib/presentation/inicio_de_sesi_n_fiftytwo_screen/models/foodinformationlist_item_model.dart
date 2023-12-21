import '../../../core/app_export.dart';/// This class is used in the [foodinformationlist_item_widget] screen.
class FoodinformationlistItemModel {FoodinformationlistItemModel({this.foodName, this.foodPrice, this.id, }) { foodName = foodName  ?? "Hamburguesa de pollo 01";foodPrice = foodPrice  ?? "Todos los ingredientes incluidos \nPan regular";id = id  ?? ""; }

String? foodName;

String? foodPrice;

String? id;

 }
