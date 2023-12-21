import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventyeight_tab_container_screen/models/inicio_de_sesi_n_seventyeight_tab_container_model.dart';
part 'inicio_de_sesi_n_seventyeight_tab_container_event.dart';
part 'inicio_de_sesi_n_seventyeight_tab_container_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventyeightTabContainer according to the event that is dispatched to it.
class InicioDeSesiNSeventyeightTabContainerBloc extends Bloc<
    InicioDeSesiNSeventyeightTabContainerEvent,
    InicioDeSesiNSeventyeightTabContainerState> {
  InicioDeSesiNSeventyeightTabContainerBloc(
      InicioDeSesiNSeventyeightTabContainerState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventyeightTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSeventyeightTabContainerInitialEvent event,
    Emitter<InicioDeSesiNSeventyeightTabContainerState> emit,
  ) async {}
}
