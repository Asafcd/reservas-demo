import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftyone_page/models/inicio_de_sesi_n_fiftyone_model.dart';
part 'inicio_de_sesi_n_fiftyone_event.dart';
part 'inicio_de_sesi_n_fiftyone_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFiftyone according to the event that is dispatched to it.
class InicioDeSesiNFiftyoneBloc
    extends Bloc<InicioDeSesiNFiftyoneEvent, InicioDeSesiNFiftyoneState> {
  InicioDeSesiNFiftyoneBloc(InicioDeSesiNFiftyoneState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiftyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNFiftyoneInitialEvent event,
    Emitter<InicioDeSesiNFiftyoneState> emit,
  ) async {}
}
