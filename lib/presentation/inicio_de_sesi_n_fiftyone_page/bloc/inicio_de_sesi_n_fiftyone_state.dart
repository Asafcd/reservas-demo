// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fiftyone_bloc.dart';

/// Represents the state of InicioDeSesiNFiftyone in the application.
class InicioDeSesiNFiftyoneState extends Equatable {
  InicioDeSesiNFiftyoneState({this.inicioDeSesiNFiftyoneModelObj});

  InicioDeSesiNFiftyoneModel? inicioDeSesiNFiftyoneModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNFiftyoneModelObj,
      ];
  InicioDeSesiNFiftyoneState copyWith(
      {InicioDeSesiNFiftyoneModel? inicioDeSesiNFiftyoneModelObj}) {
    return InicioDeSesiNFiftyoneState(
      inicioDeSesiNFiftyoneModelObj:
          inicioDeSesiNFiftyoneModelObj ?? this.inicioDeSesiNFiftyoneModelObj,
    );
  }
}
