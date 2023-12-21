import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_two_screen/models/inicio_de_sesi_n_two_model.dart';
part 'inicio_de_sesi_n_two_event.dart';
part 'inicio_de_sesi_n_two_state.dart';

/// A bloc that manages the state of a InicioDeSesiNTwo according to the event that is dispatched to it.
class InicioDeSesiNTwoBloc
    extends Bloc<InicioDeSesiNTwoEvent, InicioDeSesiNTwoState> {
  InicioDeSesiNTwoBloc(InicioDeSesiNTwoState initialState)
      : super(initialState) {
    on<InicioDeSesiNTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNTwoInitialEvent event,
    Emitter<InicioDeSesiNTwoState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
