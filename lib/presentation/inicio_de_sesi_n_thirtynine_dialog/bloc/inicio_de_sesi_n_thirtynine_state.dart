// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_thirtynine_bloc.dart';

/// Represents the state of InicioDeSesiNThirtynine in the application.
class InicioDeSesiNThirtynineState extends Equatable {
  InicioDeSesiNThirtynineState({this.inicioDeSesiNThirtynineModelObj});

  InicioDeSesiNThirtynineModel? inicioDeSesiNThirtynineModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNThirtynineModelObj,
      ];
  InicioDeSesiNThirtynineState copyWith(
      {InicioDeSesiNThirtynineModel? inicioDeSesiNThirtynineModelObj}) {
    return InicioDeSesiNThirtynineState(
      inicioDeSesiNThirtynineModelObj: inicioDeSesiNThirtynineModelObj ??
          this.inicioDeSesiNThirtynineModelObj,
    );
  }
}
