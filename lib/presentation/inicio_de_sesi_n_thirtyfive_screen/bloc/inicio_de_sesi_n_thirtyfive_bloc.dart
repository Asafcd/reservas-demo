import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_thirtyfive_screen/models/inicio_de_sesi_n_thirtyfive_model.dart';
part 'inicio_de_sesi_n_thirtyfive_event.dart';
part 'inicio_de_sesi_n_thirtyfive_state.dart';

/// A bloc that manages the state of a InicioDeSesiNThirtyfive according to the event that is dispatched to it.
class InicioDeSesiNThirtyfiveBloc
    extends Bloc<InicioDeSesiNThirtyfiveEvent, InicioDeSesiNThirtyfiveState> {
  InicioDeSesiNThirtyfiveBloc(InicioDeSesiNThirtyfiveState initialState)
      : super(initialState) {
    on<InicioDeSesiNThirtyfiveInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<InicioDeSesiNThirtyfiveState> emit,
  ) {
    emit(state.copyWith(
      uploadCheckBox: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<InicioDeSesiNThirtyfiveState> emit,
  ) {
    emit(state.copyWith(
      saveDataCheckBox: event.value,
    ));
  }

  _onInitialize(
    InicioDeSesiNThirtyfiveInitialEvent event,
    Emitter<InicioDeSesiNThirtyfiveState> emit,
  ) async {
    emit(state.copyWith(
      firstNameTextFieldController: TextEditingController(),
      codeTextFieldController: TextEditingController(),
      phoneTextFieldController: TextEditingController(),
      emailTextFieldController: TextEditingController(),
      cardNumberTextFieldController: TextEditingController(),
      expiresTextFieldController: TextEditingController(),
      yearTextFieldController: TextEditingController(),
      cvvTextFieldController: TextEditingController(),
      productValueEditTextController: TextEditingController(),
      uploadCheckBox: false,
      saveDataCheckBox: false,
    ));
  }
}
