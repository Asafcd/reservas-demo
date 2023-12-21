import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twenty_dialog/models/inicio_de_sesi_n_twenty_model.dart';
part 'inicio_de_sesi_n_twenty_event.dart';
part 'inicio_de_sesi_n_twenty_state.dart';

/// A bloc that manages the state of a InicioDeSesiNTwenty according to the event that is dispatched to it.
class InicioDeSesiNTwentyBloc
    extends Bloc<InicioDeSesiNTwentyEvent, InicioDeSesiNTwentyState> {
  InicioDeSesiNTwentyBloc(InicioDeSesiNTwentyState initialState)
      : super(initialState) {
    on<InicioDeSesiNTwentyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNTwentyInitialEvent event,
    Emitter<InicioDeSesiNTwentyState> emit,
  ) async {}
}
