import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fiftyeight_screen/models/inicio_de_sesi_n_fiftyeight_model.dart';part 'inicio_de_sesi_n_fiftyeight_event.dart';part 'inicio_de_sesi_n_fiftyeight_state.dart';/// A bloc that manages the state of a InicioDeSesiNFiftyeight according to the event that is dispatched to it.
class InicioDeSesiNFiftyeightBloc extends Bloc<InicioDeSesiNFiftyeightEvent, InicioDeSesiNFiftyeightState> {InicioDeSesiNFiftyeightBloc(InicioDeSesiNFiftyeightState initialState) : super(initialState) { on<InicioDeSesiNFiftyeightInitialEvent>(_onInitialize); }

_onInitialize(InicioDeSesiNFiftyeightInitialEvent event, Emitter<InicioDeSesiNFiftyeightState> emit, ) async  {  } 
 }
