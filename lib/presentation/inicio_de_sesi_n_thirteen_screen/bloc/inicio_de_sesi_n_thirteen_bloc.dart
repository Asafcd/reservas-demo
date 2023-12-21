import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_thirteen_screen/models/inicio_de_sesi_n_thirteen_model.dart';
part 'inicio_de_sesi_n_thirteen_event.dart';
part 'inicio_de_sesi_n_thirteen_state.dart';

/// A bloc that manages the state of a InicioDeSesiNThirteen according to the event that is dispatched to it.
class InicioDeSesiNThirteenBloc
    extends Bloc<InicioDeSesiNThirteenEvent, InicioDeSesiNThirteenState> {
  InicioDeSesiNThirteenBloc(InicioDeSesiNThirteenState initialState)
      : super(initialState) {
    on<InicioDeSesiNThirteenInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<InicioDeSesiNThirteenState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<InicioDeSesiNThirteenState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    InicioDeSesiNThirteenInitialEvent event,
    Emitter<InicioDeSesiNThirteenState> emit,
  ) async {
    emit(state.copyWith(
      newPasswordController: TextEditingController(),
      confirmPasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
