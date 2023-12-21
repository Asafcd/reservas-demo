import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/iniciodesesinninetyfour_item_model.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetyfour_screen/models/inicio_de_sesi_n_ninetyfour_model.dart';
part 'inicio_de_sesi_n_ninetyfour_event.dart';
part 'inicio_de_sesi_n_ninetyfour_state.dart';

/// A bloc that manages the state of a InicioDeSesiNNinetyfour according to the event that is dispatched to it.
class InicioDeSesiNNinetyfourBloc
    extends Bloc<InicioDeSesiNNinetyfourEvent, InicioDeSesiNNinetyfourState> {
  InicioDeSesiNNinetyfourBloc(InicioDeSesiNNinetyfourState initialState)
      : super(initialState) {
    on<InicioDeSesiNNinetyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNNinetyfourInitialEvent event,
    Emitter<InicioDeSesiNNinetyfourState> emit,
  ) async {
    emit(state.copyWith(
        inicioDeSesiNNinetyfourModelObj:
            state.inicioDeSesiNNinetyfourModelObj?.copyWith(
      iniciodesesinninetyfourItemList: fillIniciodesesinninetyfourItemList(),
    )));
  }

  List<IniciodesesinninetyfourItemModel> fillIniciodesesinninetyfourItemList() {
    return List.generate(4, (index) => IniciodesesinninetyfourItemModel());
  }
}
