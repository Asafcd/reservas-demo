// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_sixtynine_bloc.dart';

/// Represents the state of InicioDeSesiNSixtynine in the application.
class InicioDeSesiNSixtynineState extends Equatable {
  InicioDeSesiNSixtynineState({this.inicioDeSesiNSixtynineModelObj});

  InicioDeSesiNSixtynineModel? inicioDeSesiNSixtynineModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSixtynineModelObj,
      ];
  InicioDeSesiNSixtynineState copyWith(
      {InicioDeSesiNSixtynineModel? inicioDeSesiNSixtynineModelObj}) {
    return InicioDeSesiNSixtynineState(
      inicioDeSesiNSixtynineModelObj:
          inicioDeSesiNSixtynineModelObj ?? this.inicioDeSesiNSixtynineModelObj,
    );
  }
}
