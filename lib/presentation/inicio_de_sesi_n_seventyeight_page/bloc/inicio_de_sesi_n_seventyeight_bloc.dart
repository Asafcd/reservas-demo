import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventyeight_page/models/inicio_de_sesi_n_seventyeight_model.dart';
part 'inicio_de_sesi_n_seventyeight_event.dart';
part 'inicio_de_sesi_n_seventyeight_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventyeight according to the event that is dispatched to it.
class InicioDeSesiNSeventyeightBloc extends Bloc<InicioDeSesiNSeventyeightEvent,
    InicioDeSesiNSeventyeightState> {
  InicioDeSesiNSeventyeightBloc(InicioDeSesiNSeventyeightState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSeventyeightInitialEvent event,
    Emitter<InicioDeSesiNSeventyeightState> emit,
  ) async {}
}
