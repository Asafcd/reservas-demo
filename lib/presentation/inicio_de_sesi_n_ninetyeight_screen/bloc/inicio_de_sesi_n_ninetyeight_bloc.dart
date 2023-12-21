import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_ninetyeight_screen/models/inicio_de_sesi_n_ninetyeight_model.dart';
part 'inicio_de_sesi_n_ninetyeight_event.dart';
part 'inicio_de_sesi_n_ninetyeight_state.dart';

/// A bloc that manages the state of a InicioDeSesiNNinetyeight according to the event that is dispatched to it.
class InicioDeSesiNNinetyeightBloc
    extends Bloc<InicioDeSesiNNinetyeightEvent, InicioDeSesiNNinetyeightState> {
  InicioDeSesiNNinetyeightBloc(InicioDeSesiNNinetyeightState initialState)
      : super(initialState) {
    on<InicioDeSesiNNinetyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNNinetyeightInitialEvent event,
    Emitter<InicioDeSesiNNinetyeightState> emit,
  ) async {
    emit(state.copyWith(
      productvalueController: TextEditingController(),
    ));
  }
}
