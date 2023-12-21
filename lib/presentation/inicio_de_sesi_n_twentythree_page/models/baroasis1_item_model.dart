import '../../../core/app_export.dart';/// This class is used in the [baroasis1_item_widget] screen.
class Baroasis1ItemModel {Baroasis1ItemModel({this.userImage, this.text, this.reviews, this.reviews1, this.viernesDomingo, this.pm, this.id, }) { userImage = userImage  ?? ImageConstant.imgRectangle12406;text = text  ?? "Bar Oasis";reviews = reviews  ?? ImageConstant.imgStar210;reviews1 = reviews1  ?? "4.8 - 1,200 reviews";viernesDomingo = viernesDomingo  ?? "Viernes - Domingo";pm = pm  ?? "4:00 p.m. - 3:00 a.m.";id = id  ?? ""; }

String? userImage;

String? text;

String? reviews;

String? reviews1;

String? viernesDomingo;

String? pm;

String? id;

 }
