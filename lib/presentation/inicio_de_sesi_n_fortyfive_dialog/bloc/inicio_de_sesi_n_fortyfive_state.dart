// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortyfive_bloc.dart';

/// Represents the state of InicioDeSesiNFortyfive in the application.
class InicioDeSesiNFortyfiveState extends Equatable {
  InicioDeSesiNFortyfiveState({this.inicioDeSesiNFortyfiveModelObj});

  InicioDeSesiNFortyfiveModel? inicioDeSesiNFortyfiveModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNFortyfiveModelObj,
      ];
  InicioDeSesiNFortyfiveState copyWith(
      {InicioDeSesiNFortyfiveModel? inicioDeSesiNFortyfiveModelObj}) {
    return InicioDeSesiNFortyfiveState(
      inicioDeSesiNFortyfiveModelObj:
          inicioDeSesiNFortyfiveModelObj ?? this.inicioDeSesiNFortyfiveModelObj,
    );
  }
}
