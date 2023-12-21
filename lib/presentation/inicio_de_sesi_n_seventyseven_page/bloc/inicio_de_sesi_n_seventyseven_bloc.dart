import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventyseven_page/models/inicio_de_sesi_n_seventyseven_model.dart';
part 'inicio_de_sesi_n_seventyseven_event.dart';
part 'inicio_de_sesi_n_seventyseven_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventyseven according to the event that is dispatched to it.
class InicioDeSesiNSeventysevenBloc extends Bloc<InicioDeSesiNSeventysevenEvent,
    InicioDeSesiNSeventysevenState> {
  InicioDeSesiNSeventysevenBloc(InicioDeSesiNSeventysevenState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSeventysevenInitialEvent event,
    Emitter<InicioDeSesiNSeventysevenState> emit,
  ) async {}
}
