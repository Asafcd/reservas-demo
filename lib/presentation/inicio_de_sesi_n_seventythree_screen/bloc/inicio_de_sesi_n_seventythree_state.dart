// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_seventythree_bloc.dart';

/// Represents the state of InicioDeSesiNSeventythree in the application.
class InicioDeSesiNSeventythreeState extends Equatable {
  InicioDeSesiNSeventythreeState({this.inicioDeSesiNSeventythreeModelObj});

  InicioDeSesiNSeventythreeModel? inicioDeSesiNSeventythreeModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNSeventythreeModelObj,
      ];
  InicioDeSesiNSeventythreeState copyWith(
      {InicioDeSesiNSeventythreeModel? inicioDeSesiNSeventythreeModelObj}) {
    return InicioDeSesiNSeventythreeState(
      inicioDeSesiNSeventythreeModelObj: inicioDeSesiNSeventythreeModelObj ??
          this.inicioDeSesiNSeventythreeModelObj,
    );
  }
}
