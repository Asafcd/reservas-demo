import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_thirtyseven_screen/models/inicio_de_sesi_n_thirtyseven_model.dart';
part 'inicio_de_sesi_n_thirtyseven_event.dart';
part 'inicio_de_sesi_n_thirtyseven_state.dart';

/// A bloc that manages the state of a InicioDeSesiNThirtyseven according to the event that is dispatched to it.
class InicioDeSesiNThirtysevenBloc
    extends Bloc<InicioDeSesiNThirtysevenEvent, InicioDeSesiNThirtysevenState> {
  InicioDeSesiNThirtysevenBloc(InicioDeSesiNThirtysevenState initialState)
      : super(initialState) {
    on<InicioDeSesiNThirtysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNThirtysevenInitialEvent event,
    Emitter<InicioDeSesiNThirtysevenState> emit,
  ) async {
    emit(state.copyWith(
      invitadoCounterCarolinaInurretaController: TextEditingController(),
      invitadoCounterJosInurretaTamaiController: TextEditingController(),
      invitadoCounterAnaBelNInurretaController: TextEditingController(),
      invitadoCounterJenniferHernNdezController: TextEditingController(),
      invitadoCounterDavidInurretaGMezController: TextEditingController(),
    ));
  }
}
