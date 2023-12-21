import '../../../core/app_export.dart';/// This class is used in the [foodinformationlist1_item_widget] screen.
class Foodinformationlist1ItemModel {Foodinformationlist1ItemModel({this.foodName, this.foodDescription, this.id, }) { foodName = foodName  ?? "Hamburguesa de pollo 01";foodDescription = foodDescription  ?? "Sin pepinillos\nPan integral\nQueso extra";id = id  ?? ""; }

String? foodName;

String? foodDescription;

String? id;

 }
