import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_seventyfour_screen/models/inicio_de_sesi_n_seventyfour_model.dart';
part 'inicio_de_sesi_n_seventyfour_event.dart';
part 'inicio_de_sesi_n_seventyfour_state.dart';

/// A bloc that manages the state of a InicioDeSesiNSeventyfour according to the event that is dispatched to it.
class InicioDeSesiNSeventyfourBloc
    extends Bloc<InicioDeSesiNSeventyfourEvent, InicioDeSesiNSeventyfourState> {
  InicioDeSesiNSeventyfourBloc(InicioDeSesiNSeventyfourState initialState)
      : super(initialState) {
    on<InicioDeSesiNSeventyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNSeventyfourInitialEvent event,
    Emitter<InicioDeSesiNSeventyfourState> emit,
  ) async {}
}
