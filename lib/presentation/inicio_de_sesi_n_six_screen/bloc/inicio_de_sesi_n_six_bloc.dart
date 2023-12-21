import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_six_screen/models/inicio_de_sesi_n_six_model.dart';
part 'inicio_de_sesi_n_six_event.dart';
part 'inicio_de_sesi_n_six_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSix according to the event that is dispatched to it.
class InicioDeSesiNSixBloc
    extends Bloc<InicioDeSesiNSixEvent, InicioDeSesiNSixState> {
  InicioDeSesiNSixBloc(InicioDeSesiNSixState initialState)
      : super(initialState) {
    on<InicioDeSesiNSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSixInitialEvent event,
    Emitter<InicioDeSesiNSixState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
