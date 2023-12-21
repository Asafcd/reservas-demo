import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/reservas_restaurantes_seventeen_screen/models/reservas_restaurantes_seventeen_model.dart';
part 'reservas_restaurantes_seventeen_event.dart';
part 'reservas_restaurantes_seventeen_state.dart';

/// A bloc that manages the state of a ReservasRestaurantesSeventeen according to the event that is dispatched to it.
class ReservasRestaurantesSeventeenBloc extends Bloc<
    ReservasRestaurantesSeventeenEvent, ReservasRestaurantesSeventeenState> {
  ReservasRestaurantesSeventeenBloc(
      ReservasRestaurantesSeventeenState initialState)
      : super(initialState) {
    on<ReservasRestaurantesSeventeenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReservasRestaurantesSeventeenInitialEvent event,
    Emitter<ReservasRestaurantesSeventeenState> emit,
  ) async {
    emit(state.copyWith(
      couponsController: TextEditingController(),
    ));
  }
}
