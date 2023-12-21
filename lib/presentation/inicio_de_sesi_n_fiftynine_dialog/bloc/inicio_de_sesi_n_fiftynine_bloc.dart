import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftynine_dialog/models/inicio_de_sesi_n_fiftynine_model.dart';
part 'inicio_de_sesi_n_fiftynine_event.dart';
part 'inicio_de_sesi_n_fiftynine_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFiftynine according to the event that is dispatched to it.
class InicioDeSesiNFiftynineBloc
    extends Bloc<InicioDeSesiNFiftynineEvent, InicioDeSesiNFiftynineState> {
  InicioDeSesiNFiftynineBloc(InicioDeSesiNFiftynineState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiftynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNFiftynineInitialEvent event,
    Emitter<InicioDeSesiNFiftynineState> emit,
  ) async {}
}
