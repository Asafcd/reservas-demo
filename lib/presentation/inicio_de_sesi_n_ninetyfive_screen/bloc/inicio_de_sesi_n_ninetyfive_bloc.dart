import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetyfive_screen/models/inicio_de_sesi_n_ninetyfive_model.dart';
part 'inicio_de_sesi_n_ninetyfive_event.dart';
part 'inicio_de_sesi_n_ninetyfive_state.dart';

/// A bloc that manages the state of a InicioDeSesiNNinetyfive according to the event that is dispatched to it.
class InicioDeSesiNNinetyfiveBloc
    extends Bloc<InicioDeSesiNNinetyfiveEvent, InicioDeSesiNNinetyfiveState> {
  InicioDeSesiNNinetyfiveBloc(InicioDeSesiNNinetyfiveState initialState)
      : super(initialState) {
    on<InicioDeSesiNNinetyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNNinetyfiveInitialEvent event,
    Emitter<InicioDeSesiNNinetyfiveState> emit,
  ) async {}
}
