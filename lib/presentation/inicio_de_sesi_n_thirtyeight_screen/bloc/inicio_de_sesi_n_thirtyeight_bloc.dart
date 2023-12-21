import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_thirtyeight_screen/models/inicio_de_sesi_n_thirtyeight_model.dart';part 'inicio_de_sesi_n_thirtyeight_event.dart';part 'inicio_de_sesi_n_thirtyeight_state.dart';/// A bloc that manages the state of a InicioDeSesiNThirtyeight according to the event that is dispatched to it.
class InicioDeSesiNThirtyeightBloc extends Bloc<InicioDeSesiNThirtyeightEvent, InicioDeSesiNThirtyeightState> {InicioDeSesiNThirtyeightBloc(InicioDeSesiNThirtyeightState initialState) : super(initialState) { on<InicioDeSesiNThirtyeightInitialEvent>(_onInitialize); }

_onInitialize(InicioDeSesiNThirtyeightInitialEvent event, Emitter<InicioDeSesiNThirtyeightState> emit, ) async  {  } 
 }
