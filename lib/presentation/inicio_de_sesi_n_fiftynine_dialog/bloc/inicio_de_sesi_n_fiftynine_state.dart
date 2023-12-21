// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftynine_bloc.dart';

/// Represents the state of InicioDeSesiNFiftynine in the application.
class InicioDeSesiNFiftynineState extends Equatable {
  InicioDeSesiNFiftynineState({this.inicioDeSesiNFiftynineModelObj});

  InicioDeSesiNFiftynineModel? inicioDeSesiNFiftynineModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNFiftynineModelObj,
      ];
  InicioDeSesiNFiftynineState copyWith(
      {InicioDeSesiNFiftynineModel? inicioDeSesiNFiftynineModelObj}) {
    return InicioDeSesiNFiftynineState(
      inicioDeSesiNFiftynineModelObj:
          inicioDeSesiNFiftynineModelObj ?? this.inicioDeSesiNFiftynineModelObj,
    );
  }
}
