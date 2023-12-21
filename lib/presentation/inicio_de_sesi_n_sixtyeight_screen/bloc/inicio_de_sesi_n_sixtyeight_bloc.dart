import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_sixtyeight_screen/models/inicio_de_sesi_n_sixtyeight_model.dart';part 'inicio_de_sesi_n_sixtyeight_event.dart';part 'inicio_de_sesi_n_sixtyeight_state.dart';/// A bloc that manages the state of a InicioDeSesiNSixtyeight according to the event that is dispatched to it.
class InicioDeSesiNSixtyeightBloc extends Bloc<InicioDeSesiNSixtyeightEvent, InicioDeSesiNSixtyeightState> {InicioDeSesiNSixtyeightBloc(InicioDeSesiNSixtyeightState initialState) : super(initialState) { on<InicioDeSesiNSixtyeightInitialEvent>(_onInitialize); }

_onInitialize(InicioDeSesiNSixtyeightInitialEvent event, Emitter<InicioDeSesiNSixtyeightState> emit, ) async  {  } 
 }
