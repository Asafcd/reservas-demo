import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget18_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eightyfour_screen/models/inicio_de_sesi_n_eightyfour_model.dart';
part 'inicio_de_sesi_n_eightyfour_event.dart';
part 'inicio_de_sesi_n_eightyfour_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEightyfour according to the event that is dispatched to it.
class InicioDeSesiNEightyfourBloc
    extends Bloc<InicioDeSesiNEightyfourEvent, InicioDeSesiNEightyfourState> {
  InicioDeSesiNEightyfourBloc(InicioDeSesiNEightyfourState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightyfourInitialEvent>(_onInitialize);
  }

  List<Widget18ItemModel> fillWidget18ItemList() {
    return List.generate(1, (index) => Widget18ItemModel());
  }

  _onInitialize(
    InicioDeSesiNEightyfourInitialEvent event,
    Emitter<InicioDeSesiNEightyfourState> emit,
  ) async {
    emit(state.copyWith(
      productvalueController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inicioDeSesiNEightyfourModelObj:
            state.inicioDeSesiNEightyfourModelObj?.copyWith(
      widget18ItemList: fillWidget18ItemList(),
    )));
  }
}
