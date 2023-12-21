import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentyeight_page/models/inicio_de_sesi_n_twentyeight_model.dart';
part 'inicio_de_sesi_n_twentyeight_event.dart';
part 'inicio_de_sesi_n_twentyeight_state.dart';

/// A bloc that manages the state of a InicioDeSesiNTwentyeight according to the event that is dispatched to it.
class InicioDeSesiNTwentyeightBloc
    extends Bloc<InicioDeSesiNTwentyeightEvent, InicioDeSesiNTwentyeightState> {
  InicioDeSesiNTwentyeightBloc(InicioDeSesiNTwentyeightState initialState)
      : super(initialState) {
    on<InicioDeSesiNTwentyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNTwentyeightInitialEvent event,
    Emitter<InicioDeSesiNTwentyeightState> emit,
  ) async {}
}
