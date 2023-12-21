import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/baroasisslider1_item_model.dart';
import '../models/baroasis1_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentythree_page/models/inicio_de_sesi_n_twentythree_model.dart';
part 'inicio_de_sesi_n_twentythree_event.dart';
part 'inicio_de_sesi_n_twentythree_state.dart';

/// A bloc that manages the state of a InicioDeSesiNTwentythree according to the event that is dispatched to it.
class InicioDeSesiNTwentythreeBloc
    extends Bloc<InicioDeSesiNTwentythreeEvent, InicioDeSesiNTwentythreeState> {
  InicioDeSesiNTwentythreeBloc(InicioDeSesiNTwentythreeState initialState)
      : super(initialState) {
    on<InicioDeSesiNTwentythreeInitialEvent>(_onInitialize);
  }

  List<Baroasisslider1ItemModel> fillBaroasisslider1ItemList() {
    return [Baroasisslider1ItemModel(image: ImageConstant.imgRectangle12405)];
  }

  List<Baroasis1ItemModel> fillBaroasis1ItemList() {
    return [
      Baroasis1ItemModel(
          userImage: ImageConstant.imgRectangle12406,
          text: "Bar Oasis",
          reviews: ImageConstant.imgStar210,
          reviews1: "4.8 - 1,200 reviews",
          viernesDomingo: "Viernes - Domingo",
          pm: "4:00 p.m. - 3:00 a.m."),
      Baroasis1ItemModel(
          userImage: ImageConstant.imgRectangle12407,
          text: "Bar Oasis",
          reviews: ImageConstant.imgStar211,
          reviews1: "4.8 - 1,200 reviews",
          viernesDomingo: "Viernes - Domingo",
          pm: "4:00 p.m. - 3:00 a.m."),
      Baroasis1ItemModel(
          userImage: ImageConstant.imgRectangle12407138x152,
          text: "Bar Oasis",
          reviews: ImageConstant.imgStar212,
          reviews1: "4.8 - 1,200 reviews",
          viernesDomingo: "Viernes - Domingo",
          pm: "4:00 p.m. - 3:00 a.m."),
      Baroasis1ItemModel(
          userImage: ImageConstant.imgRectangle124071,
          text: "Bar Oasis",
          reviews: ImageConstant.imgStar213,
          reviews1: "4.8 - 1,200 reviews",
          viernesDomingo: "Viernes - Domingo",
          pm: "4:00 p.m. - 3:00 a.m.")
    ];
  }

  _onInitialize(
    InicioDeSesiNTwentythreeInitialEvent event,
    Emitter<InicioDeSesiNTwentythreeState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNTwentythreeModelObj:
            state.inicioDeSesiNTwentythreeModelObj?.copyWith(
      baroasisslider1ItemList: fillBaroasisslider1ItemList(),
      baroasis1ItemList: fillBaroasis1ItemList(),
    )));
  }
}
