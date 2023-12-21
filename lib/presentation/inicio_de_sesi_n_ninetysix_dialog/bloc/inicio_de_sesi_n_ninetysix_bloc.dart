import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetysix_dialog/models/inicio_de_sesi_n_ninetysix_model.dart';
part 'inicio_de_sesi_n_ninetysix_event.dart';
part 'inicio_de_sesi_n_ninetysix_state.dart';

/// A bloc that manages the state of a InicioDeSesiNNinetysix according to the event that is dispatched to it.
class InicioDeSesiNNinetysixBloc
    extends Bloc<InicioDeSesiNNinetysixEvent, InicioDeSesiNNinetysixState> {
  InicioDeSesiNNinetysixBloc(InicioDeSesiNNinetysixState initialState)
      : super(initialState) {
    on<InicioDeSesiNNinetysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNNinetysixInitialEvent event,
    Emitter<InicioDeSesiNNinetysixState> emit,
  ) async {}
}
