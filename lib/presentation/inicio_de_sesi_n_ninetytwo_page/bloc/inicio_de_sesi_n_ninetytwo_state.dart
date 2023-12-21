// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_ninetytwo_bloc.dart';

/// Represents the state of InicioDeSesiNNinetytwo in the application.
class InicioDeSesiNNinetytwoState extends Equatable {
  InicioDeSesiNNinetytwoState({this.inicioDeSesiNNinetytwoModelObj});

  InicioDeSesiNNinetytwoModel? inicioDeSesiNNinetytwoModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNNinetytwoModelObj,
      ];
  InicioDeSesiNNinetytwoState copyWith(
      {InicioDeSesiNNinetytwoModel? inicioDeSesiNNinetytwoModelObj}) {
    return InicioDeSesiNNinetytwoState(
      inicioDeSesiNNinetytwoModelObj:
          inicioDeSesiNNinetytwoModelObj ?? this.inicioDeSesiNNinetytwoModelObj,
    );
  }
}
