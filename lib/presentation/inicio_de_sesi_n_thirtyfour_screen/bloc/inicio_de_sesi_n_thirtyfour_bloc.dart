import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_thirtyfour_screen/models/inicio_de_sesi_n_thirtyfour_model.dart';
part 'inicio_de_sesi_n_thirtyfour_event.dart';
part 'inicio_de_sesi_n_thirtyfour_state.dart';

/// A bloc that manages the state of a InicioDeSesiNThirtyfour according to the event that is dispatched to it.
class InicioDeSesiNThirtyfourBloc
    extends Bloc<InicioDeSesiNThirtyfourEvent, InicioDeSesiNThirtyfourState> {
  InicioDeSesiNThirtyfourBloc(InicioDeSesiNThirtyfourState initialState)
      : super(initialState) {
    on<InicioDeSesiNThirtyfourInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<InicioDeSesiNThirtyfourState> emit,
  ) {
    emit(state.copyWith(
      uploadCheckBox: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<InicioDeSesiNThirtyfourState> emit,
  ) {
    emit(state.copyWith(
      saveDataCheckBox: event.value,
    ));
  }

  _onInitialize(
    InicioDeSesiNThirtyfourInitialEvent event,
    Emitter<InicioDeSesiNThirtyfourState> emit,
  ) async {
    emit(state.copyWith(
      firstNameFieldController: TextEditingController(),
      mothersLastNameFieldController: TextEditingController(),
      mothersLastName2FieldController: TextEditingController(),
      codeFieldController: TextEditingController(),
      phoneFieldController: TextEditingController(),
      emailFieldController: TextEditingController(),
      cardNumberFieldController: TextEditingController(),
      expirationDateFieldController: TextEditingController(),
      yearFieldController: TextEditingController(),
      cvvFieldController: TextEditingController(),
      productValueFieldController: TextEditingController(),
      uploadCheckBox: false,
      saveDataCheckBox: false,
    ));
  }
}
