import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortytwo_screen/models/inicio_de_sesi_n_fortytwo_model.dart';
part 'inicio_de_sesi_n_fortytwo_event.dart';
part 'inicio_de_sesi_n_fortytwo_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFortytwo according to the event that is dispatched to it.
class InicioDeSesiNFortytwoBloc
    extends Bloc<InicioDeSesiNFortytwoEvent, InicioDeSesiNFortytwoState> {
  InicioDeSesiNFortytwoBloc(InicioDeSesiNFortytwoState initialState)
      : super(initialState) {
    on<InicioDeSesiNFortytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNFortytwoInitialEvent event,
    Emitter<InicioDeSesiNFortytwoState> emit,
  ) async {
    emit(state.copyWith(
      userNameController: TextEditingController(),
      codeController: TextEditingController(),
      phoneController: TextEditingController(),
      emailController: TextEditingController(),
      cardNumberController: TextEditingController(),
      expirationDateController: TextEditingController(),
      zipcodeController: TextEditingController(),
      cvvController: TextEditingController(),
    ));
  }
}
