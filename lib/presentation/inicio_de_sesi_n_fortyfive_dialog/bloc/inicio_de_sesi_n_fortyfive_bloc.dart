import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortyfive_dialog/models/inicio_de_sesi_n_fortyfive_model.dart';
part 'inicio_de_sesi_n_fortyfive_event.dart';
part 'inicio_de_sesi_n_fortyfive_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFortyfive according to the event that is dispatched to it.
class InicioDeSesiNFortyfiveBloc
    extends Bloc<InicioDeSesiNFortyfiveEvent, InicioDeSesiNFortyfiveState> {
  InicioDeSesiNFortyfiveBloc(InicioDeSesiNFortyfiveState initialState)
      : super(initialState) {
    on<InicioDeSesiNFortyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNFortyfiveInitialEvent event,
    Emitter<InicioDeSesiNFortyfiveState> emit,
  ) async {}
}
