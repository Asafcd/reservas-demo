// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetyfive_bloc.dart';

/// Represents the state of InicioDeSesiNNinetyfive in the application.
class InicioDeSesiNNinetyfiveState extends Equatable {
  InicioDeSesiNNinetyfiveState({this.inicioDeSesiNNinetyfiveModelObj});

  InicioDeSesiNNinetyfiveModel? inicioDeSesiNNinetyfiveModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNNinetyfiveModelObj,
      ];
  InicioDeSesiNNinetyfiveState copyWith(
      {InicioDeSesiNNinetyfiveModel? inicioDeSesiNNinetyfiveModelObj}) {
    return InicioDeSesiNNinetyfiveState(
      inicioDeSesiNNinetyfiveModelObj: inicioDeSesiNNinetyfiveModelObj ??
          this.inicioDeSesiNNinetyfiveModelObj,
    );
  }
}
