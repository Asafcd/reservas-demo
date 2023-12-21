import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentyeight_tab_container_screen/models/inicio_de_sesi_n_twentyeight_tab_container_model.dart';
part 'inicio_de_sesi_n_twentyeight_tab_container_event.dart';
part 'inicio_de_sesi_n_twentyeight_tab_container_state.dart';

/// A bloc that manages the state of a InicioDeSesiNTwentyeightTabContainer according to the event that is dispatched to it.
class InicioDeSesiNTwentyeightTabContainerBloc extends Bloc<
    InicioDeSesiNTwentyeightTabContainerEvent,
    InicioDeSesiNTwentyeightTabContainerState> {
  InicioDeSesiNTwentyeightTabContainerBloc(
      InicioDeSesiNTwentyeightTabContainerState initialState)
      : super(initialState) {
    on<InicioDeSesiNTwentyeightTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNTwentyeightTabContainerInitialEvent event,
    Emitter<InicioDeSesiNTwentyeightTabContainerState> emit,
  ) async {}
}
