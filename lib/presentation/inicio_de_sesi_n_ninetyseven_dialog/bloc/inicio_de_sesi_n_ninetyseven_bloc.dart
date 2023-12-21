import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetyseven_dialog/models/inicio_de_sesi_n_ninetyseven_model.dart';
part 'inicio_de_sesi_n_ninetyseven_event.dart';
part 'inicio_de_sesi_n_ninetyseven_state.dart';

/// A bloc that manages the state of a InicioDeSesiNNinetyseven according to the event that is dispatched to it.
class InicioDeSesiNNinetysevenBloc
    extends Bloc<InicioDeSesiNNinetysevenEvent, InicioDeSesiNNinetysevenState> {
  InicioDeSesiNNinetysevenBloc(InicioDeSesiNNinetysevenState initialState)
      : super(initialState) {
    on<InicioDeSesiNNinetysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNNinetysevenInitialEvent event,
    Emitter<InicioDeSesiNNinetysevenState> emit,
  ) async {}
}
