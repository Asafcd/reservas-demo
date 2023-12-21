import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_thirtynine_dialog/models/inicio_de_sesi_n_thirtynine_model.dart';
part 'inicio_de_sesi_n_thirtynine_event.dart';
part 'inicio_de_sesi_n_thirtynine_state.dart';

/// A bloc that manages the state of a InicioDeSesiNThirtynine according to the event that is dispatched to it.
class InicioDeSesiNThirtynineBloc
    extends Bloc<InicioDeSesiNThirtynineEvent, InicioDeSesiNThirtynineState> {
  InicioDeSesiNThirtynineBloc(InicioDeSesiNThirtynineState initialState)
      : super(initialState) {
    on<InicioDeSesiNThirtynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNThirtynineInitialEvent event,
    Emitter<InicioDeSesiNThirtynineState> emit,
  ) async {}
}
