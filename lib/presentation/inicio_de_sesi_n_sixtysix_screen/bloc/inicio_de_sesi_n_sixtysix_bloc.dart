import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_sixtysix_screen/models/inicio_de_sesi_n_sixtysix_model.dart';
part 'inicio_de_sesi_n_sixtysix_event.dart';
part 'inicio_de_sesi_n_sixtysix_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSixtysix according to the event that is dispatched to it.
class InicioDeSesiNSixtysixBloc
    extends Bloc<InicioDeSesiNSixtysixEvent, InicioDeSesiNSixtysixState> {
  InicioDeSesiNSixtysixBloc(InicioDeSesiNSixtysixState initialState)
      : super(initialState) {
    on<InicioDeSesiNSixtysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSixtysixInitialEvent event,
    Emitter<InicioDeSesiNSixtysixState> emit,
  ) async {
    emit(state.copyWith(
      invitadoCounter1Controller: TextEditingController(),
      invitadoCounter2Controller: TextEditingController(),
      invitadoCounter3Controller: TextEditingController(),
      invitadoCounter4Controller: TextEditingController(),
      invitadoCounter5Controller: TextEditingController(),
    ));
  }
}
