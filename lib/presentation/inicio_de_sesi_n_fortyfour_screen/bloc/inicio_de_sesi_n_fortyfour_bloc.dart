import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortyfour_screen/models/inicio_de_sesi_n_fortyfour_model.dart';part 'inicio_de_sesi_n_fortyfour_event.dart';part 'inicio_de_sesi_n_fortyfour_state.dart';/// A bloc that manages the state of a InicioDeSesiNFortyfour according to the event that is dispatched to it.
class InicioDeSesiNFortyfourBloc extends Bloc<InicioDeSesiNFortyfourEvent, InicioDeSesiNFortyfourState> {InicioDeSesiNFortyfourBloc(InicioDeSesiNFortyfourState initialState) : super(initialState) { on<InicioDeSesiNFortyfourInitialEvent>(_onInitialize); }

_onInitialize(InicioDeSesiNFortyfourInitialEvent event, Emitter<InicioDeSesiNFortyfourState> emit, ) async  {  } 
 }
