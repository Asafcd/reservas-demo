import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eight_screen/models/inicio_de_sesi_n_eight_model.dart';
part 'inicio_de_sesi_n_eight_event.dart';
part 'inicio_de_sesi_n_eight_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEight according to the event that is dispatched to it.
class InicioDeSesiNEightBloc
    extends Bloc<InicioDeSesiNEightEvent, InicioDeSesiNEightState> {
  InicioDeSesiNEightBloc(InicioDeSesiNEightState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNEightInitialEvent event,
    Emitter<InicioDeSesiNEightState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
