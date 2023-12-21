import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortysix_screen/models/inicio_de_sesi_n_fortysix_model.dart';
part 'inicio_de_sesi_n_fortysix_event.dart';
part 'inicio_de_sesi_n_fortysix_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFortysix according to the event that is dispatched to it.
class InicioDeSesiNFortysixBloc
    extends Bloc<InicioDeSesiNFortysixEvent, InicioDeSesiNFortysixState> {
  InicioDeSesiNFortysixBloc(InicioDeSesiNFortysixState initialState)
      : super(initialState) {
    on<InicioDeSesiNFortysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNFortysixInitialEvent event,
    Emitter<InicioDeSesiNFortysixState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
