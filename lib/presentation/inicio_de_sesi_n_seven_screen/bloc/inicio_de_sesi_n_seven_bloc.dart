import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seven_screen/models/inicio_de_sesi_n_seven_model.dart';
part 'inicio_de_sesi_n_seven_event.dart';
part 'inicio_de_sesi_n_seven_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeven according to the event that is dispatched to it.
class InicioDeSesiNSevenBloc
    extends Bloc<InicioDeSesiNSevenEvent, InicioDeSesiNSevenState> {
  InicioDeSesiNSevenBloc(InicioDeSesiNSevenState initialState)
      : super(initialState) {
    on<InicioDeSesiNSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSevenInitialEvent event,
    Emitter<InicioDeSesiNSevenState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
