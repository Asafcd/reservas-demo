import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_fortythree_screen/models/inicio_de_sesi_n_fortythree_model.dart';part 'inicio_de_sesi_n_fortythree_event.dart';part 'inicio_de_sesi_n_fortythree_state.dart';/// A bloc that manages the state of a InicioDeSesiNFortythree according to the event that is dispatched to it.
class InicioDeSesiNFortythreeBloc extends Bloc<InicioDeSesiNFortythreeEvent, InicioDeSesiNFortythreeState> {InicioDeSesiNFortythreeBloc(InicioDeSesiNFortythreeState initialState) : super(initialState) { on<InicioDeSesiNFortythreeInitialEvent>(_onInitialize); }

_onInitialize(InicioDeSesiNFortythreeInitialEvent event, Emitter<InicioDeSesiNFortythreeState> emit, ) async  { emit(state.copyWith(uploadTextField1Controller: TextEditingController(), uploadTextField2Controller: TextEditingController(), uploadTextField3Controller: TextEditingController(), uploadTextField4Controller: TextEditingController(), uploadTextField5Controller: TextEditingController(), uploadTextField6Controller: TextEditingController())); } 
 }
