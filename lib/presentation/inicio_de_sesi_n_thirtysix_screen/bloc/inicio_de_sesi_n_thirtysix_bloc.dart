import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_thirtysix_screen/models/inicio_de_sesi_n_thirtysix_model.dart';
part 'inicio_de_sesi_n_thirtysix_event.dart';
part 'inicio_de_sesi_n_thirtysix_state.dart';

/// A bloc that manages the state of a InicioDeSesiNThirtysix according to the event that is dispatched to it.
class InicioDeSesiNThirtysixBloc
    extends Bloc<InicioDeSesiNThirtysixEvent, InicioDeSesiNThirtysixState> {
  InicioDeSesiNThirtysixBloc(InicioDeSesiNThirtysixState initialState)
      : super(initialState) {
    on<InicioDeSesiNThirtysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNThirtysixInitialEvent event,
    Emitter<InicioDeSesiNThirtysixState> emit,
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
