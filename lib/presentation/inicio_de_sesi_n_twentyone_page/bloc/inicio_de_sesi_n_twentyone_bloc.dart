import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import '../models/baroasiscomponent_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentyone_page/models/inicio_de_sesi_n_twentyone_model.dart';
part 'inicio_de_sesi_n_twentyone_event.dart';
part 'inicio_de_sesi_n_twentyone_state.dart';

/// A bloc that manages the state of a InicioDeSesiNTwentyone according to the event that is dispatched to it.
class InicioDeSesiNTwentyoneBloc
    extends Bloc<InicioDeSesiNTwentyoneEvent, InicioDeSesiNTwentyoneState> {
  InicioDeSesiNTwentyoneBloc(InicioDeSesiNTwentyoneState initialState)
      : super(initialState) {
    on<InicioDeSesiNTwentyoneInitialEvent>(_onInitialize);
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return List.generate(1, (index) => UserprofileItemModel());
  }

  List<BaroasiscomponentItemModel> fillBaroasiscomponentItemList() {
    return [
      BaroasiscomponentItemModel(
          userImage: ImageConstant.imgRectangle12406,
          text: "Bar Oasis",
          reviewImage: ImageConstant.imgStar25,
          reviewText: "4.8 - 1,200 reviews",
          timingText: "Viernes - Domingo",
          clockText: "4:00 p.m. - 3:00 a.m."),
      BaroasiscomponentItemModel(
          userImage: ImageConstant.imgRectangle12407,
          text: "Bar Oasis",
          reviewImage: ImageConstant.imgStar26,
          reviewText: "4.8 - 1,200 reviews",
          timingText: "Viernes - Domingo",
          clockText: "4:00 p.m. - 3:00 a.m."),
      BaroasiscomponentItemModel(
          userImage: ImageConstant.imgRectangle12407138x152,
          text: "Bar Oasis",
          reviewImage: ImageConstant.imgStar27,
          reviewText: "4.8 - 1,200 reviews",
          timingText: "Viernes - Domingo",
          clockText: "4:00 p.m. - 3:00 a.m."),
      BaroasiscomponentItemModel(
          userImage: ImageConstant.imgRectangle124071,
          text: "Bar Oasis",
          reviewImage: ImageConstant.imgStar28,
          reviewText: "4.8 - 1,200 reviews",
          timingText: "Viernes - Domingo",
          clockText: "4:00 p.m. - 3:00 a.m.")
    ];
  }

  _onInitialize(
    InicioDeSesiNTwentyoneInitialEvent event,
    Emitter<InicioDeSesiNTwentyoneState> emit,
  ) async {
    emit(state.copyWith(
      topAppBarController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNTwentyoneModelObj:
            state.inicioDeSesiNTwentyoneModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
      baroasiscomponentItemList: fillBaroasiscomponentItemList(),
    )));
  }
}
