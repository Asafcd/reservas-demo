import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventy_page/models/inicio_de_sesi_n_seventy_model.dart';
part 'inicio_de_sesi_n_seventy_event.dart';
part 'inicio_de_sesi_n_seventy_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventy according to the event that is dispatched to it.
class InicioDeSesiNSeventyBloc
    extends Bloc<InicioDeSesiNSeventyEvent, InicioDeSesiNSeventyState> {
  InicioDeSesiNSeventyBloc(InicioDeSesiNSeventyState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSeventyInitialEvent event,
    Emitter<InicioDeSesiNSeventyState> emit,
  ) async {}
}
