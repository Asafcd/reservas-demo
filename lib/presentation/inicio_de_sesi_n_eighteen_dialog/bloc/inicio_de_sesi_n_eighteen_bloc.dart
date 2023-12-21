import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eighteen_dialog/models/inicio_de_sesi_n_eighteen_model.dart';
part 'inicio_de_sesi_n_eighteen_event.dart';
part 'inicio_de_sesi_n_eighteen_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEighteen according to the event that is dispatched to it.
class InicioDeSesiNEighteenBloc
    extends Bloc<InicioDeSesiNEighteenEvent, InicioDeSesiNEighteenState> {
  InicioDeSesiNEighteenBloc(InicioDeSesiNEighteenState initialState)
      : super(initialState) {
    on<InicioDeSesiNEighteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNEighteenInitialEvent event,
    Emitter<InicioDeSesiNEighteenState> emit,
  ) async {}
}
