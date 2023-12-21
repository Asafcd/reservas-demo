import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_three_screen/models/inicio_de_sesi_n_three_model.dart';
part 'inicio_de_sesi_n_three_event.dart';
part 'inicio_de_sesi_n_three_state.dart';

/// A bloc that manages the state of a InicioDeSesiNThree according to the event that is dispatched to it.
class InicioDeSesiNThreeBloc
    extends Bloc<InicioDeSesiNThreeEvent, InicioDeSesiNThreeState> {
  InicioDeSesiNThreeBloc(InicioDeSesiNThreeState initialState)
      : super(initialState) {
    on<InicioDeSesiNThreeInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<InicioDeSesiNThreeState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    InicioDeSesiNThreeInitialEvent event,
    Emitter<InicioDeSesiNThreeState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}
