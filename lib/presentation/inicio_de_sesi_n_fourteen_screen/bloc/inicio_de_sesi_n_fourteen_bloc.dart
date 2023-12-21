import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fourteen_screen/models/inicio_de_sesi_n_fourteen_model.dart';
part 'inicio_de_sesi_n_fourteen_event.dart';
part 'inicio_de_sesi_n_fourteen_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFourteen according to the event that is dispatched to it.
class InicioDeSesiNFourteenBloc
    extends Bloc<InicioDeSesiNFourteenEvent, InicioDeSesiNFourteenState> {
  InicioDeSesiNFourteenBloc(InicioDeSesiNFourteenState initialState)
      : super(initialState) {
    on<InicioDeSesiNFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNFourteenInitialEvent event,
    Emitter<InicioDeSesiNFourteenState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
      confirmPasswordController: TextEditingController(),
    ));
  }
}
