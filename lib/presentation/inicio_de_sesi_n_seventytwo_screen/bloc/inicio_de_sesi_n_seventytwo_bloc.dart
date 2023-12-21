import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventytwo_screen/models/inicio_de_sesi_n_seventytwo_model.dart';
part 'inicio_de_sesi_n_seventytwo_event.dart';
part 'inicio_de_sesi_n_seventytwo_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventytwo according to the event that is dispatched to it.
class InicioDeSesiNSeventytwoBloc
    extends Bloc<InicioDeSesiNSeventytwoEvent, InicioDeSesiNSeventytwoState> {
  InicioDeSesiNSeventytwoBloc(InicioDeSesiNSeventytwoState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSeventytwoInitialEvent event,
    Emitter<InicioDeSesiNSeventytwoState> emit,
  ) async {}
}
