// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetythree_bloc.dart';

/// Represents the state of InicioDeSesiNNinetythree in the application.
class InicioDeSesiNNinetythreeState extends Equatable {
  InicioDeSesiNNinetythreeState({this.inicioDeSesiNNinetythreeModelObj});

  InicioDeSesiNNinetythreeModel? inicioDeSesiNNinetythreeModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNNinetythreeModelObj,
      ];
  InicioDeSesiNNinetythreeState copyWith(
      {InicioDeSesiNNinetythreeModel? inicioDeSesiNNinetythreeModelObj}) {
    return InicioDeSesiNNinetythreeState(
      inicioDeSesiNNinetythreeModelObj: inicioDeSesiNNinetythreeModelObj ??
          this.inicioDeSesiNNinetythreeModelObj,
    );
  }
}
