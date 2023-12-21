import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fifty_screen/models/inicio_de_sesi_n_fifty_model.dart';
part 'inicio_de_sesi_n_fifty_event.dart';
part 'inicio_de_sesi_n_fifty_state.dart';

/// A bloc that manages the state of a InicioDeSesiNFifty according to the event that is dispatched to it.
class InicioDeSesiNFiftyBloc
    extends Bloc<InicioDeSesiNFiftyEvent, InicioDeSesiNFiftyState> {
  InicioDeSesiNFiftyBloc(InicioDeSesiNFiftyState initialState)
      : super(initialState) {
    on<InicioDeSesiNFiftyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InicioDeSesiNFiftyInitialEvent event,
    Emitter<InicioDeSesiNFiftyState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      nameController: TextEditingController(),
      emailController: TextEditingController(),
    ));
  }
}
