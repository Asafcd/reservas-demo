import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/reservaactivasection_item_model.dart';
import '../models/baroasiscomponent1_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetytwo_page/models/inicio_de_sesi_n_ninetytwo_model.dart';
part 'inicio_de_sesi_n_ninetytwo_event.dart';
part 'inicio_de_sesi_n_ninetytwo_state.dart';

/// A bloc that manages the state of a InicioDeSesiNNinetytwo according to the event that is dispatched to it.
class InicioDeSesiNNinetytwoBloc
    extends Bloc<InicioDeSesiNNinetytwoEvent, InicioDeSesiNNinetytwoState> {
  InicioDeSesiNNinetytwoBloc(InicioDeSesiNNinetytwoState initialState)
      : super(initialState) {
    on<InicioDeSesiNNinetytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNNinetytwoInitialEvent event,
    Emitter<InicioDeSesiNNinetytwoState> emit,
  ) async {
    emit(state.copyWith(
        inicioDeSesiNNinetytwoModelObj:
            state.inicioDeSesiNNinetytwoModelObj?.copyWith(
      reservaactivasectionItemList: fillReservaactivasectionItemList(),
      baroasiscomponent1ItemList: fillBaroasiscomponent1ItemList(),
    )));
  }

  List<ReservaactivasectionItemModel> fillReservaactivasectionItemList() {
    return [
      ReservaactivasectionItemModel(
          userImage: ImageConstant.imgRectangle1240710,
          barName: "Karaoke Fortuna",
          eventImage: ImageConstant.imgEditCalendarErrorcontainer,
          eventDate: "Viernes 14/Ago/2023",
          eventTime: ImageConstant.imgClockErrorcontainer,
          eventTime1: "9:00 p.m.",
          pickupImage: ImageConstant.imgPeopleAlt,
          pickupText: "Pick Up")
    ];
  }

  List<Baroasiscomponent1ItemModel> fillBaroasiscomponent1ItemList() {
    return [
      Baroasiscomponent1ItemModel(
          userImage: ImageConstant.imgRectangle12406,
          text: "Bar Oasis",
          reviewImage: ImageConstant.imgStar233,
          reviewText: "4.8 - 1,200 reviews",
          timingText: "Viernes - Domingo",
          clockText: "4:00 p.m. - 3:00 a.m."),
      Baroasiscomponent1ItemModel(
          userImage: ImageConstant.imgRectangle12407,
          text: "Bar Oasis",
          reviewImage: ImageConstant.imgStar234,
          reviewText: "4.8 - 1,200 reviews",
          timingText: "Viernes - Domingo",
          clockText: "4:00 p.m. - 3:00 a.m."),
      Baroasiscomponent1ItemModel(
          userImage: ImageConstant.imgRectangle12407138x152,
          text: "Bar Oasis",
          reviewImage: ImageConstant.imgStar235,
          reviewText: "4.8 - 1,200 reviews",
          timingText: "Viernes - Domingo",
          clockText: "4:00 p.m. - 3:00 a.m."),
      Baroasiscomponent1ItemModel(
          userImage: ImageConstant.imgRectangle124071,
          text: "Bar Oasis",
          reviewImage: ImageConstant.imgStar236,
          reviewText: "4.8 - 1,200 reviews",
          timingText: "Viernes - Domingo",
          clockText: "4:00 p.m. - 3:00 a.m.")
    ];
  }
}
