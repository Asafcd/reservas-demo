import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_five_screen/models/inicio_de_sesi_n_five_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'inicio_de_sesi_n_five_event.dart';
part 'inicio_de_sesi_n_five_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFive according to the event that is dispatched to it.
class InicioDeSesiNFiveBloc
    extends Bloc<InicioDeSesiNFiveEvent, InicioDeSesiNFiveState>
    with CodeAutoFill {
  InicioDeSesiNFiveBloc(InicioDeSesiNFiveState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiveInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<InicioDeSesiNFiveState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    InicioDeSesiNFiveInitialEvent event,
    Emitter<InicioDeSesiNFiveState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
