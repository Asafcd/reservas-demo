import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortyseven_screen/models/inicio_de_sesi_n_fortyseven_model.dart';part 'inicio_de_sesi_n_fortyseven_event.dart';part 'inicio_de_sesi_n_fortyseven_state.dart';/// A bloc that manages the state of a InicioDeSesiNFortyseven according to the event that is dispatched to it.
class InicioDeSesiNFortysevenBloc extends Bloc<InicioDeSesiNFortysevenEvent, InicioDeSesiNFortysevenState> {InicioDeSesiNFortysevenBloc(InicioDeSesiNFortysevenState initialState) : super(initialState) { on<InicioDeSesiNFortysevenInitialEvent>(_onInitialize); }

_onInitialize(InicioDeSesiNFortysevenInitialEvent event, Emitter<InicioDeSesiNFortysevenState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
