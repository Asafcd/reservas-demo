import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_nine_screen/models/inicio_de_sesi_n_nine_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'inicio_de_sesi_n_nine_event.dart';
part 'inicio_de_sesi_n_nine_state.dart';

/// A bloc that manages the state of a InicioDeSesiNNine according to the event that is dispatched to it.
class InicioDeSesiNNineBloc
    extends Bloc<InicioDeSesiNNineEvent, InicioDeSesiNNineState>
    with CodeAutoFill {
  InicioDeSesiNNineBloc(InicioDeSesiNNineState initialState)
      : super(initialState) {
    on<InicioDeSesiNNineInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<InicioDeSesiNNineState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    InicioDeSesiNNineInitialEvent event,
    Emitter<InicioDeSesiNNineState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
