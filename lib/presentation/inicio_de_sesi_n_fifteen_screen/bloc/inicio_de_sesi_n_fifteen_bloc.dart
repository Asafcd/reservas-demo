import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fifteen_screen/models/inicio_de_sesi_n_fifteen_model.dart';
part 'inicio_de_sesi_n_fifteen_event.dart';
part 'inicio_de_sesi_n_fifteen_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFifteen according to the event that is dispatched to it.
class InicioDeSesiNFifteenBloc
    extends Bloc<InicioDeSesiNFifteenEvent, InicioDeSesiNFifteenState> {
  InicioDeSesiNFifteenBloc(InicioDeSesiNFifteenState initialState)
      : super(initialState) {
    on<InicioDeSesiNFifteenInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<InicioDeSesiNFifteenState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<InicioDeSesiNFifteenState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    InicioDeSesiNFifteenInitialEvent event,
    Emitter<InicioDeSesiNFifteenState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
      confirmPasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
