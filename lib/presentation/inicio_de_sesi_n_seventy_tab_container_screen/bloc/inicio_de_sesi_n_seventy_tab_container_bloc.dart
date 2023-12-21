import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventy_tab_container_screen/models/inicio_de_sesi_n_seventy_tab_container_model.dart';
part 'inicio_de_sesi_n_seventy_tab_container_event.dart';
part 'inicio_de_sesi_n_seventy_tab_container_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventyTabContainer according to the event that is dispatched to it.
class InicioDeSesiNSeventyTabContainerBloc extends Bloc<
    InicioDeSesiNSeventyTabContainerEvent,
    InicioDeSesiNSeventyTabContainerState> {
  InicioDeSesiNSeventyTabContainerBloc(
      InicioDeSesiNSeventyTabContainerState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventyTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSeventyTabContainerInitialEvent event,
    Emitter<InicioDeSesiNSeventyTabContainerState> emit,
  ) async {}
}
