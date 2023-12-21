import '../../../core/app_export.dart';/// This class is used in the [baroasiscomponent1_item_widget] screen.
class Baroasiscomponent1ItemModel {Baroasiscomponent1ItemModel({this.userImage, this.text, this.reviewImage, this.reviewText, this.timingText, this.clockText, this.id, }) { userImage = userImage  ?? ImageConstant.imgRectangle12406;text = text  ?? "Bar Oasis";reviewImage = reviewImage  ?? ImageConstant.imgStar233;reviewText = reviewText  ?? "4.8 - 1,200 reviews";timingText = timingText  ?? "Viernes - Domingo";clockText = clockText  ?? "4:00 p.m. - 3:00 a.m.";id = id  ?? ""; }

String? userImage;

String? text;

String? reviewImage;

String? reviewText;

String? timingText;

String? clockText;

String? id;

 }
