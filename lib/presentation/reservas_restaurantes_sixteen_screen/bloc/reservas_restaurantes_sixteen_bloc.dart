import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/reservas_restaurantes_sixteen_screen/models/reservas_restaurantes_sixteen_model.dart';
part 'reservas_restaurantes_sixteen_event.dart';
part 'reservas_restaurantes_sixteen_state.dart';

/// A bloc that manages the state of a ReservasRestaurantesSixteen according to the event that is dispatched to it.
class ReservasRestaurantesSixteenBloc extends Bloc<
    ReservasRestaurantesSixteenEvent, ReservasRestaurantesSixteenState> {
  ReservasRestaurantesSixteenBloc(ReservasRestaurantesSixteenState initialState)
      : super(initialState) {
    on<ReservasRestaurantesSixteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReservasRestaurantesSixteenInitialEvent event,
    Emitter<ReservasRestaurantesSixteenState> emit,
  ) async {}
}
