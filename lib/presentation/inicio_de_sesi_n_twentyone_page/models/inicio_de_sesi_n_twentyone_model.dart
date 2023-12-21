// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'userprofile_item_model.dart';import '../../../core/app_export.dart';import 'baroasiscomponent_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_twentyone_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNTwentyoneModel extends Equatable {InicioDeSesiNTwentyoneModel({this.userprofileItemList = const [], this.baroasiscomponentItemList = const [], }) {  }

List<UserprofileItemModel> userprofileItemList;

List<BaroasiscomponentItemModel> baroasiscomponentItemList;

InicioDeSesiNTwentyoneModel copyWith({List<UserprofileItemModel>? userprofileItemList, List<BaroasiscomponentItemModel>? baroasiscomponentItemList, }) { return InicioDeSesiNTwentyoneModel(
userprofileItemList : userprofileItemList ?? this.userprofileItemList,
baroasiscomponentItemList : baroasiscomponentItemList ?? this.baroasiscomponentItemList,
); } 
@override List<Object?> get props => [userprofileItemList,baroasiscomponentItemList];
 }
