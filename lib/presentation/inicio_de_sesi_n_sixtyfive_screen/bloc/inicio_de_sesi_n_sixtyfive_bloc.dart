import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_sixtyfive_screen/models/inicio_de_sesi_n_sixtyfive_model.dart';
part 'inicio_de_sesi_n_sixtyfive_event.dart';
part 'inicio_de_sesi_n_sixtyfive_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSixtyfive according to the event that is dispatched to it.
class InicioDeSesiNSixtyfiveBloc
    extends Bloc<InicioDeSesiNSixtyfiveEvent, InicioDeSesiNSixtyfiveState> {
  InicioDeSesiNSixtyfiveBloc(InicioDeSesiNSixtyfiveState initialState)
      : super(initialState) {
    on<InicioDeSesiNSixtyfiveInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<InicioDeSesiNSixtyfiveState> emit,
  ) {
    emit(state.copyWith(
      saveDataCheckBox: event.value,
    ));
  }

  _onInitialize(
    InicioDeSesiNSixtyfiveInitialEvent event,
    Emitter<InicioDeSesiNSixtyfiveState> emit,
  ) async {
    emit(state.copyWith(
      firstNameTextFieldController: TextEditingController(),
      codeTextFieldController: TextEditingController(),
      phoneTextFieldController: TextEditingController(),
      emailTextFieldController: TextEditingController(),
      cardNumberTextFieldController: TextEditingController(),
      expiresMonthTextFieldController: TextEditingController(),
      expiresYearTextFieldController: TextEditingController(),
      cvvTextFieldController: TextEditingController(),
      productValueEditTextController: TextEditingController(),
      saveDataCheckBox: false,
    ));
  }
}
