import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eightynine_screen/models/inicio_de_sesi_n_eightynine_model.dart';
part 'inicio_de_sesi_n_eightynine_event.dart';
part 'inicio_de_sesi_n_eightynine_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEightynine according to the event that is dispatched to it.
class InicioDeSesiNEightynineBloc
    extends Bloc<InicioDeSesiNEightynineEvent, InicioDeSesiNEightynineState> {
  InicioDeSesiNEightynineBloc(InicioDeSesiNEightynineState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightynineInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<InicioDeSesiNEightynineState> emit,
  ) {
    emit(state.copyWith(
      uploadCheckBox: event.value,
    ));
  }

  _onInitialize(
    InicioDeSesiNEightynineInitialEvent event,
    Emitter<InicioDeSesiNEightynineState> emit,
  ) async {
    emit(state.copyWith(
      firstNameTextFieldController: TextEditingController(),
      codeTextFieldController: TextEditingController(),
      phoneTextFieldController: TextEditingController(),
      emailTextFieldController: TextEditingController(),
      cardNumberTextFieldController: TextEditingController(),
      expiresRowController: TextEditingController(),
      yearEditTextController: TextEditingController(),
      cvvTextFieldController: TextEditingController(),
      productValueEditTextController: TextEditingController(),
      uploadCheckBox: false,
    ));
  }
}
