import '../../../core/app_export.dart';/// This class is used in the [activereservations_item_widget] screen.
class ActivereservationsItemModel {ActivereservationsItemModel({this.rowImage, this.text1, this.text2, this.text3, this.text4, this.text5, this.text6, this.id, }) { rowImage = rowImage  ?? ImageConstant.imgRectangle124076;text1 = text1  ?? "Gracias por compartirnos";text2 = text2  ?? "Todas las noches";text3 = text3  ?? "9:00 a.m. - 3:00 a.m.";text4 = text4  ?? "01/Ago/2023 - 15/Ago/2023.";text5 = text5  ?? "Bar Oasis a 11.2 km de ti";text6 = text6  ?? "20% de descuento en todos nuestros platillos.";id = id  ?? ""; }

String? rowImage;

String? text1;

String? text2;

String? text3;

String? text4;

String? text5;

String? text6;

String? id;

 }
