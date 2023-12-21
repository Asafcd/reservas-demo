import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventythree_screen/models/inicio_de_sesi_n_seventythree_model.dart';
part 'inicio_de_sesi_n_seventythree_event.dart';
part 'inicio_de_sesi_n_seventythree_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventythree according to the event that is dispatched to it.
class InicioDeSesiNSeventythreeBloc extends Bloc<InicioDeSesiNSeventythreeEvent,
    InicioDeSesiNSeventythreeState> {
  InicioDeSesiNSeventythreeBloc(InicioDeSesiNSeventythreeState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSeventythreeInitialEvent event,
    Emitter<InicioDeSesiNSeventythreeState> emit,
  ) async {}
}
