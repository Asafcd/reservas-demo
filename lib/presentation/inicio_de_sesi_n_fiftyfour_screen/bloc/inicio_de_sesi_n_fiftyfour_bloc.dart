import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget4_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftyfour_screen/models/inicio_de_sesi_n_fiftyfour_model.dart';
part 'inicio_de_sesi_n_fiftyfour_event.dart';
part 'inicio_de_sesi_n_fiftyfour_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFiftyfour according to the event that is dispatched to it.
class InicioDeSesiNFiftyfourBloc
    extends Bloc<InicioDeSesiNFiftyfourEvent, InicioDeSesiNFiftyfourState> {
  InicioDeSesiNFiftyfourBloc(InicioDeSesiNFiftyfourState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiftyfourInitialEvent>(_onInitialize);
  }

  List<Widget4ItemModel> fillWidget4ItemList() {
    return List.generate(1, (index) => Widget4ItemModel());
  }

  _onInitialize(
    InicioDeSesiNFiftyfourInitialEvent event,
    Emitter<InicioDeSesiNFiftyfourState> emit,
  ) async {
    emit(state.copyWith(
      productvalueController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNFiftyfourModelObj:
            state.inicioDeSesiNFiftyfourModelObj?.copyWith(
      widget4ItemList: fillWidget4ItemList(),
    )));
  }
}
