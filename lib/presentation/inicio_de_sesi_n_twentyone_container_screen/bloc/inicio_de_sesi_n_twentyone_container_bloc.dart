import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twentyone_container_screen/models/inicio_de_sesi_n_twentyone_container_model.dart';part 'inicio_de_sesi_n_twentyone_container_event.dart';part 'inicio_de_sesi_n_twentyone_container_state.dart';/// A bloc that manages the state of a InicioDeSesiNTwentyoneContainer according to the event that is dispatched to it.
class InicioDeSesiNTwentyoneContainerBloc extends Bloc<InicioDeSesiNTwentyoneContainerEvent, InicioDeSesiNTwentyoneContainerState> {InicioDeSesiNTwentyoneContainerBloc(InicioDeSesiNTwentyoneContainerState initialState) : super(initialState) { on<InicioDeSesiNTwentyoneContainerInitialEvent>(_onInitialize); }

_onInitialize(InicioDeSesiNTwentyoneContainerInitialEvent event, Emitter<InicioDeSesiNTwentyoneContainerState> emit, ) async  {  } 
 }
