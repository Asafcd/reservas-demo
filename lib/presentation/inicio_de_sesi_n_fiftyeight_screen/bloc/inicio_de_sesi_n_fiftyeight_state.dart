// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyeight_bloc.dart';

/// Represents the state of InicioDeSesiNFiftyeight in the application.
class InicioDeSesiNFiftyeightState extends Equatable {
  InicioDeSesiNFiftyeightState({this.inicioDeSesiNFiftyeightModelObj});

  InicioDeSesiNFiftyeightModel? inicioDeSesiNFiftyeightModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNFiftyeightModelObj,
      ];
  InicioDeSesiNFiftyeightState copyWith(
      {InicioDeSesiNFiftyeightModel? inicioDeSesiNFiftyeightModelObj}) {
    return InicioDeSesiNFiftyeightState(
      inicioDeSesiNFiftyeightModelObj: inicioDeSesiNFiftyeightModelObj ??
          this.inicioDeSesiNFiftyeightModelObj,
    );
  }
}
