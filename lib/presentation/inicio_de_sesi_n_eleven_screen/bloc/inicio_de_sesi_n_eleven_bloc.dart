import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eleven_screen/models/inicio_de_sesi_n_eleven_model.dart';
part 'inicio_de_sesi_n_eleven_event.dart';
part 'inicio_de_sesi_n_eleven_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEleven according to the event that is dispatched to it.
class InicioDeSesiNElevenBloc
    extends Bloc<InicioDeSesiNElevenEvent, InicioDeSesiNElevenState> {
  InicioDeSesiNElevenBloc(InicioDeSesiNElevenState initialState)
      : super(initialState) {
    on<InicioDeSesiNElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNElevenInitialEvent event,
    Emitter<InicioDeSesiNElevenState> emit,
  ) async {
    emit(state.copyWith(
      newPasswordController: TextEditingController(),
      confirmPasswordController: TextEditingController(),
    ));
  }
}
