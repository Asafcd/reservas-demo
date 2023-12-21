// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_fortyfour_bloc.dart';

/// Represents the state of InicioDeSesiNFortyfour in the application.
class InicioDeSesiNFortyfourState extends Equatable {
  InicioDeSesiNFortyfourState({this.inicioDeSesiNFortyfourModelObj});

  InicioDeSesiNFortyfourModel? inicioDeSesiNFortyfourModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNFortyfourModelObj,
      ];
  InicioDeSesiNFortyfourState copyWith(
      {InicioDeSesiNFortyfourModel? inicioDeSesiNFortyfourModelObj}) {
    return InicioDeSesiNFortyfourState(
      inicioDeSesiNFortyfourModelObj:
          inicioDeSesiNFortyfourModelObj ?? this.inicioDeSesiNFortyfourModelObj,
    );
  }
}
