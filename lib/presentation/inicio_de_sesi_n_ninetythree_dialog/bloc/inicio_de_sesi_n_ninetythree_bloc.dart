import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetythree_dialog/models/inicio_de_sesi_n_ninetythree_model.dart';
part 'inicio_de_sesi_n_ninetythree_event.dart';
part 'inicio_de_sesi_n_ninetythree_state.dart';

/// A bloc that manages the state of a InicioDeSesiNNinetythree according to the event that is dispatched to it.
class InicioDeSesiNNinetythreeBloc
    extends Bloc<InicioDeSesiNNinetythreeEvent, InicioDeSesiNNinetythreeState> {
  InicioDeSesiNNinetythreeBloc(InicioDeSesiNNinetythreeState initialState)
      : super(initialState) {
    on<InicioDeSesiNNinetythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNNinetythreeInitialEvent event,
    Emitter<InicioDeSesiNNinetythreeState> emit,
  ) async {}
}
