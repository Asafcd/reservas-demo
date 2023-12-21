import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftyone_tab_container_screen/models/inicio_de_sesi_n_fiftyone_tab_container_model.dart';
part 'inicio_de_sesi_n_fiftyone_tab_container_event.dart';
part 'inicio_de_sesi_n_fiftyone_tab_container_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFiftyoneTabContainer according to the event that is dispatched to it.
class InicioDeSesiNFiftyoneTabContainerBloc extends Bloc<
    InicioDeSesiNFiftyoneTabContainerEvent,
    InicioDeSesiNFiftyoneTabContainerState> {
  InicioDeSesiNFiftyoneTabContainerBloc(
      InicioDeSesiNFiftyoneTabContainerState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiftyoneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNFiftyoneTabContainerInitialEvent event,
    Emitter<InicioDeSesiNFiftyoneTabContainerState> emit,
  ) async {}
}
