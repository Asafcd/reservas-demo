import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:asaf_s_application2/presentation/inicio_de_sesi_n_twelve_screen/models/inicio_de_sesi_n_twelve_model.dart';part 'inicio_de_sesi_n_twelve_event.dart';part 'inicio_de_sesi_n_twelve_state.dart';/// A bloc that manages the state of a InicioDeSesiNTwelve according to the event that is dispatched to it.
class InicioDeSesiNTwelveBloc extends Bloc<InicioDeSesiNTwelveEvent, InicioDeSesiNTwelveState> {InicioDeSesiNTwelveBloc(InicioDeSesiNTwelveState initialState) : super(initialState) { on<InicioDeSesiNTwelveInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<InicioDeSesiNTwelveState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changePasswordVisibility1(ChangePasswordVisibilityEvent1 event, Emitter<InicioDeSesiNTwelveState> emit, ) { emit(state.copyWith(isShowPassword1: event.value)); } 
_onInitialize(InicioDeSesiNTwelveInitialEvent event, Emitter<InicioDeSesiNTwelveState> emit, ) async  { emit(state.copyWith(newPasswordController: TextEditingController(), confirmPasswordController: TextEditingController(), isShowPassword: true, isShowPassword1: true)); } 
 }
