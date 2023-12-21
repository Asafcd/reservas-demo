import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ten_screen/models/inicio_de_sesi_n_ten_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'inicio_de_sesi_n_ten_event.dart';
part 'inicio_de_sesi_n_ten_state.dart';

/// A bloc that manages the state of a InicioDeSesiNTen according to the event that is dispatched to it.
class InicioDeSesiNTenBloc
    extends Bloc<InicioDeSesiNTenEvent, InicioDeSesiNTenState>
    with CodeAutoFill {
  InicioDeSesiNTenBloc(InicioDeSesiNTenState initialState)
      : super(initialState) {
    on<InicioDeSesiNTenInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<InicioDeSesiNTenState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    InicioDeSesiNTenInitialEvent event,
    Emitter<InicioDeSesiNTenState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
