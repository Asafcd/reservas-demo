import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_sixtyseven_screen/models/inicio_de_sesi_n_sixtyseven_model.dart';
part 'inicio_de_sesi_n_sixtyseven_event.dart';
part 'inicio_de_sesi_n_sixtyseven_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSixtyseven according to the event that is dispatched to it.
class InicioDeSesiNSixtysevenBloc
    extends Bloc<InicioDeSesiNSixtysevenEvent, InicioDeSesiNSixtysevenState> {
  InicioDeSesiNSixtysevenBloc(InicioDeSesiNSixtysevenState initialState)
      : super(initialState) {
    on<InicioDeSesiNSixtysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSixtysevenInitialEvent event,
    Emitter<InicioDeSesiNSixtysevenState> emit,
  ) async {
    emit(state.copyWith(
      invitadoCounterCarolinaInurretaController: TextEditingController(),
      invitadoCounterJosInurretaTamaiController: TextEditingController(),
      invitadoCounterAnaBelNInurretaController: TextEditingController(),
      invitadoCounterJenniferHernandezController: TextEditingController(),
      invitadoCounterDavidInurretaGomezController: TextEditingController(),
    ));
  }
}
