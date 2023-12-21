// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'iniciodesesinninetyfour_item_model.dart';/// This class defines the variables used in the [inicio_de_sesi_n_ninetyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InicioDeSesiNNinetyfourModel extends Equatable {InicioDeSesiNNinetyfourModel({this.iniciodesesinninetyfourItemList = const []}) {  }

List<IniciodesesinninetyfourItemModel> iniciodesesinninetyfourItemList;

InicioDeSesiNNinetyfourModel copyWith({List<IniciodesesinninetyfourItemModel>? iniciodesesinninetyfourItemList}) { return InicioDeSesiNNinetyfourModel(
iniciodesesinninetyfourItemList : iniciodesesinninetyfourItemList ?? this.iniciodesesinninetyfourItemList,
); } 
@override List<Object?> get props => [iniciodesesinninetyfourItemList];
 }
