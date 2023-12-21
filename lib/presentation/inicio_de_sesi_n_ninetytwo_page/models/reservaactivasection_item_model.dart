import '../../../core/app_export.dart';/// This class is used in the [reservaactivasection_item_widget] screen.
class ReservaactivasectionItemModel {ReservaactivasectionItemModel({this.userImage, this.barName, this.eventImage, this.eventDate, this.eventTime, this.eventTime1, this.pickupImage, this.pickupText, this.id, }) { userImage = userImage  ?? ImageConstant.imgRectangle1240710;barName = barName  ?? "Karaoke Fortuna";eventImage = eventImage  ?? ImageConstant.imgEditCalendarErrorcontainer;eventDate = eventDate  ?? "Viernes 14/Ago/2023";eventTime = eventTime  ?? ImageConstant.imgClockErrorcontainer;eventTime1 = eventTime1  ?? "9:00 p.m.";pickupImage = pickupImage  ?? ImageConstant.imgPeopleAlt;pickupText = pickupText  ?? "Pick Up";id = id  ?? ""; }

String? userImage;

String? barName;

String? eventImage;

String? eventDate;

String? eventTime;

String? eventTime1;

String? pickupImage;

String? pickupText;

String? id;

 }
