// ignore_for_file: must_be_immutable

part of 'inicio_de_sesi_n_twentysix_bloc.dart';

/// Represents the state of InicioDeSesiNTwentysix in the application.
class InicioDeSesiNTwentysixState extends Equatable {
  InicioDeSesiNTwentysixState({this.inicioDeSesiNTwentysixModelObj});

  InicioDeSesiNTwentysixModel? inicioDeSesiNTwentysixModelObj;

  @override
  List<Object?> get props => [
        inicioDeSesiNTwentysixModelObj,
      ];
  InicioDeSesiNTwentysixState copyWith(
      {InicioDeSesiNTwentysixModel? inicioDeSesiNTwentysixModelObj}) {
    return InicioDeSesiNTwentysixState(
      inicioDeSesiNTwentysixModelObj:
          inicioDeSesiNTwentysixModelObj ?? this.inicioDeSesiNTwentysixModelObj,
    );
  }
}
