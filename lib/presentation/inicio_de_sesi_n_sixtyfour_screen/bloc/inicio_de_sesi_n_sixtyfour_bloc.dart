import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_sixtyfour_screen/models/inicio_de_sesi_n_sixtyfour_model.dart';
part 'inicio_de_sesi_n_sixtyfour_event.dart';
part 'inicio_de_sesi_n_sixtyfour_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSixtyfour according to the event that is dispatched to it.
class InicioDeSesiNSixtyfourBloc
    extends Bloc<InicioDeSesiNSixtyfourEvent, InicioDeSesiNSixtyfourState> {
  InicioDeSesiNSixtyfourBloc(InicioDeSesiNSixtyfourState initialState)
      : super(initialState) {
    on<InicioDeSesiNSixtyfourInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<InicioDeSesiNSixtyfourState> emit,
  ) {
    emit(state.copyWith(
      upload: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<InicioDeSesiNSixtyfourState> emit,
  ) {
    emit(state.copyWith(
      upload1: event.value,
    ));
  }

  _onInitialize(
    InicioDeSesiNSixtyfourInitialEvent event,
    Emitter<InicioDeSesiNSixtyfourState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      mothersLastNameController: TextEditingController(),
      mothersLastName2Controller: TextEditingController(),
      codeController: TextEditingController(),
      phoneController: TextEditingController(),
      emailController: TextEditingController(),
      cardNumberController: TextEditingController(),
      expirationDateController: TextEditingController(),
      yearController: TextEditingController(),
      cvvController: TextEditingController(),
      productValueController: TextEditingController(),
      upload: false,
      upload1: false,
    ));
  }
}
