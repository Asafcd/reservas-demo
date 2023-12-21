import '../../../core/app_export.dart';/// This class is used in the [reservaactivalist_item_widget] screen.
class ReservaactivalistItemModel {ReservaactivalistItemModel({this.image, this.text, this.image1, this.text1, this.image2, this.text2, this.image3, this.text3, this.id, }) { image = image  ?? ImageConstant.imgRectangle1240780x88;text = text  ?? "Globo gourmet";image1 = image1  ?? ImageConstant.imgEditCalendarErrorcontainer;text1 = text1  ?? "Viernes 14/Ago/2023";image2 = image2  ?? ImageConstant.imgClockErrorcontainer;text2 = text2  ?? "9:00 p.m. - 11:30 p.m.";image3 = image3  ?? ImageConstant.imgPeopleAlt;text3 = text3  ?? "6 Personas";id = id  ?? ""; }

String? image;

String? text;

String? image1;

String? text1;

String? image2;

String? text2;

String? image3;

String? text3;

String? id;

 }
