import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_eightyeight_screen/models/inicio_de_sesi_n_eightyeight_model.dart';
part 'inicio_de_sesi_n_eightyeight_event.dart';
part 'inicio_de_sesi_n_eightyeight_state.dart';

/// A bloc that manages the state of a InicioDeSesiNEightyeight according to the event that is dispatched to it.
class InicioDeSesiNEightyeightBloc
    extends Bloc<InicioDeSesiNEightyeightEvent, InicioDeSesiNEightyeightState> {
  InicioDeSesiNEightyeightBloc(InicioDeSesiNEightyeightState initialState)
      : super(initialState) {
    on<InicioDeSesiNEightyeightInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<InicioDeSesiNEightyeightState> emit,
  ) {
    emit(state.copyWith(
      upload: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<InicioDeSesiNEightyeightState> emit,
  ) {
    emit(state.copyWith(
      uploadData: event.value,
    ));
  }

  _onInitialize(
    InicioDeSesiNEightyeightInitialEvent event,
    Emitter<InicioDeSesiNEightyeightState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      lastNameController: TextEditingController(),
      lastName2Controller: TextEditingController(),
      codeController: TextEditingController(),
      phoneController: TextEditingController(),
      emailController: TextEditingController(),
      cardNumberController: TextEditingController(),
      expiresController: TextEditingController(),
      yearController: TextEditingController(),
      cvvController: TextEditingController(),
      productValueController: TextEditingController(),
      upload: false,
      uploadData: false,
    ));
  }
}
