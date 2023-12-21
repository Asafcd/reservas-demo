import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_one_screen/models/inicio_de_sesi_n_one_model.dart';part 'inicio_de_sesi_n_one_event.dart';part 'inicio_de_sesi_n_one_state.dart';/// A bloc that manages the state of a InicioDeSesiNOne according to the event that is dispatched to it.
class InicioDeSesiNOneBloc extends Bloc<InicioDeSesiNOneEvent, InicioDeSesiNOneState> {InicioDeSesiNOneBloc(InicioDeSesiNOneState initialState) : super(initialState) { on<InicioDeSesiNOneInitialEvent>(_onInitialize); }

_onInitialize(InicioDeSesiNOneInitialEvent event, Emitter<InicioDeSesiNOneState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController()));Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.inicioDeSesiNTwoScreen, );}); } 
 }
